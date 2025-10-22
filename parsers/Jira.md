# Parsers For Jira

**Jira/Access/Access Methods**
```
_sourceCategory={{JIRALocalFileSource}} 
| parse regex "^(?<src_ip>[^\s]*) (?<jira_request_id>[^\s]*) (?<jira_username>[^\s]*) (?:[^\s]*\s){2}\"(?<method>[^\s]*) (?<uri>[^\s]*) (?<protocol>[^\"]*)\" (?<response_code>[^\s]*) (?<bytes>[^\s]*) \"(?<referrer>[^\"]*)\" \"(?<user_agent>[^\"]*)\"" nodrop
| parse regex "^(?<src_ip>[^\s]*) (?<jira_request_id>[^\s]*) (?<jira_username>[^\s]*) (?:[^\s]*\s){2}\"(?<method>[^\s]*) (?<uri>[^\s]*) (?<protocol>[^\"]*)\" (?<response_code>[^\s]*) (?<bytes>[^\s]*) (?<response_time>[^\s]*) \"(?<referrer>[^\"]*)\" \"(?<user_agent>[^\"]*)\" \"(?<jira_session_id>[^\"]*)\""  nodrop
| where method matches "{{method}}" and response_code matches "{{response_code}}"
| where !isEmpty(method)
| parse regex field=uri "/browse/(?<project>[^-]*)-(?<issue>\d+)" nodrop
```

**Jira/Access/Access Methods - One Day Time Comparison**
```
_sourceCategory={{JIRALocalFileSource}} 
| parse regex "^(?<src_ip>[^\s]*) (?<jira_request_id>[^\s]*) (?<jira_username>[^\s]*) (?:[^\s]*\s){2}\"(?<method>[^\s]*) (?<uri>[^\s]*) (?<protocol>[^\"]*)\" (?<response_code>[^\s]*) (?<bytes>[^\s]*) \"(?<referrer>[^\"]*)\" \"(?<user_agent>[^\"]*)\"" nodrop
| parse regex "^(?<src_ip>[^\s]*) (?<jira_request_id>[^\s]*) (?<jira_username>[^\s]*) (?:[^\s]*\s){2}\"(?<method>[^\s]*) (?<uri>[^\s]*) (?<protocol>[^\"]*)\" (?<response_code>[^\s]*) (?<bytes>[^\s]*) (?<response_time>[^\s]*) \"(?<referrer>[^\"]*)\" \"(?<user_agent>[^\"]*)\" \"(?<jira_session_id>[^\"]*)\""  nodrop
| where method matches "{{method}}" and response_code matches "{{response_code}}"
| where !isEmpty(method)
| parse regex field=uri "/browse/(?<project>[^-]*)-(?<issue>\d+)" nodrop
```

**Jira/Access/Average Response TIme**
```
_sourceCategory={{JIRALocalFileSource}} 
| parse regex "^(?<src_ip>[^\s]*) (?<jira_request_id>[^\s]*) (?<jira_username>[^\s]*) (?:[^\s]*\s){2}\"(?<method>[^\s]*) (?<uri>[^\s]*) (?<protocol>[^\"]*)\" (?<response_code>[^\s]*) (?<bytes>[^\s]*) \"(?<referrer>[^\"]*)\" \"(?<user_agent>[^\"]*)\"" nodrop
| parse regex "^(?<src_ip>[^\s]*) (?<jira_request_id>[^\s]*) (?<jira_username>[^\s]*) (?:[^\s]*\s){2}\"(?<method>[^\s]*) (?<uri>[^\s]*) (?<protocol>[^\"]*)\" (?<response_code>[^\s]*) (?<bytes>[^\s]*) (?<response_time>[^\s]*) \"(?<referrer>[^\"]*)\" \"(?<user_agent>[^\"]*)\" \"(?<jira_session_id>[^\"]*)\""  nodrop
| parse regex field=uri "/browse/(?<project>[^-]*)-(?<issue>\d+)" nodrop
```

**Jira/Access/Bytes Sent (MB)**
```
_sourceCategory={{JIRALocalFileSource}} 
| parse regex "^(?<src_ip>[^\s]*) (?<jira_request_id>[^\s]*) (?<jira_username>[^\s]*) (?:[^\s]*\s){2}\"(?<method>[^\s]*) (?<uri>[^\s]*) (?<protocol>[^\"]*)\" (?<response_code>[^\s]*) (?<bytes>[^\s]*) \"(?<referrer>[^\"]*)\" \"(?<user_agent>[^\"]*)\"" nodrop
| parse regex "^(?<src_ip>[^\s]*) (?<jira_request_id>[^\s]*) (?<jira_username>[^\s]*) (?:[^\s]*\s){2}\"(?<method>[^\s]*) (?<uri>[^\s]*) (?<protocol>[^\"]*)\" (?<response_code>[^\s]*) (?<bytes>[^\s]*) (?<response_time>[^\s]*) \"(?<referrer>[^\"]*)\" \"(?<user_agent>[^\"]*)\" \"(?<jira_session_id>[^\"]*)\""  nodrop
| parse regex field=uri "/browse/(?<project>[^-]*)-(?<issue>\d+)" nodrop
```

**Jira/Access/Bytes Sent (MB) - Outlier**
```
_sourceCategory={{JIRALocalFileSource}} 
| parse regex "^(?<src_ip>[^\s]*) (?<jira_request_id>[^\s]*) (?<jira_username>[^\s]*) (?:[^\s]*\s){2}\"(?<method>[^\s]*) (?<uri>[^\s]*) (?<protocol>[^\"]*)\" (?<response_code>[^\s]*) (?<bytes>[^\s]*) \"(?<referrer>[^\"]*)\" \"(?<user_agent>[^\"]*)\"" nodrop
| parse regex "^(?<src_ip>[^\s]*) (?<jira_request_id>[^\s]*) (?<jira_username>[^\s]*) (?:[^\s]*\s){2}\"(?<method>[^\s]*) (?<uri>[^\s]*) (?<protocol>[^\"]*)\" (?<response_code>[^\s]*) (?<bytes>[^\s]*) (?<response_time>[^\s]*) \"(?<referrer>[^\"]*)\" \"(?<user_agent>[^\"]*)\" \"(?<jira_session_id>[^\"]*)\""  nodrop
| parse regex field=uri "/browse/(?<project>[^-]*)-(?<issue>\d+)" nodrop
```

**Jira/Access/Errors**
```
_sourceCategory={{JIRALocalFileSource}}   (error or excepttion)
| parse "[*] [*] *" as date_time,severity,msg 
```

**Jira/Access/Errors Over Time**
```
_sourceCategory={{JIRALocalFileSource}}   (error or excepttion)
| parse "[*] [*] *" as date_time,severity,msg 
```

**Jira/Access/HTTP Response Code - One Day Time Compare**
```
_sourceCategory={{JIRALocalFileSource}} 
| parse regex "^(?<src_ip>[^\s]*) (?<jira_request_id>[^\s]*) (?<jira_username>[^\s]*) (?:[^\s]*\s){2}\"(?<method>[^\s]*) (?<uri>[^\s]*) (?<protocol>[^\"]*)\" (?<response_code>[^\s]*) (?<bytes>[^\s]*) \"(?<referrer>[^\"]*)\" \"(?<user_agent>[^\"]*)\"" nodrop
| parse regex "^(?<src_ip>[^\s]*) (?<jira_request_id>[^\s]*) (?<jira_username>[^\s]*) (?:[^\s]*\s){2}\"(?<method>[^\s]*) (?<uri>[^\s]*) (?<protocol>[^\"]*)\" (?<response_code>[^\s]*) (?<bytes>[^\s]*) (?<response_time>[^\s]*) \"(?<referrer>[^\"]*)\" \"(?<user_agent>[^\"]*)\" \"(?<jira_session_id>[^\"]*)\""  nodrop
| where method matches "{{method}}" and response_code matches "{{response_code}}"
| where !isEmpty(response_code)
| parse regex field=uri "/browse/(?<project>[^-]*)-(?<issue>\d+)" nodrop
```

**Jira/Access/HTTP Response Codes**
```
_sourceCategory={{JIRALocalFileSource}} 
| parse regex "^(?<src_ip>[^\s]*) (?<jira_request_id>[^\s]*) (?<jira_username>[^\s]*) (?:[^\s]*\s){2}\"(?<method>[^\s]*) (?<uri>[^\s]*) (?<protocol>[^\"]*)\" (?<response_code>[^\s]*) (?<bytes>[^\s]*) \"(?<referrer>[^\"]*)\" \"(?<user_agent>[^\"]*)\"" nodrop
| parse regex "^(?<src_ip>[^\s]*) (?<jira_request_id>[^\s]*) (?<jira_username>[^\s]*) (?:[^\s]*\s){2}\"(?<method>[^\s]*) (?<uri>[^\s]*) (?<protocol>[^\"]*)\" (?<response_code>[^\s]*) (?<bytes>[^\s]*) (?<response_time>[^\s]*) \"(?<referrer>[^\"]*)\" \"(?<user_agent>[^\"]*)\" \"(?<jira_session_id>[^\"]*)\""  nodrop
| where method matches "{{method}}" and response_code matches "{{response_code}}"
| where !isEmpty(response_code)
| parse regex field=uri "/browse/(?<project>[^-]*)-(?<issue>\d+)" nodrop
```

**Jira/Access/HTTP Response Codes Over Time**
```
_sourceCategory={{JIRALocalFileSource}}  !(200)
| parse regex "^(?<src_ip>[^\s]*) (?<jira_request_id>[^\s]*) (?<jira_username>[^\s]*) (?:[^\s]*\s){2}\"(?<method>[^\s]*) (?<uri>[^\s]*) (?<protocol>[^\"]*)\" (?<response_code>[^\s]*) (?<bytes>[^\s]*) \"(?<referrer>[^\"]*)\" \"(?<user_agent>[^\"]*)\"" nodrop
| parse regex "^(?<src_ip>[^\s]*) (?<jira_request_id>[^\s]*) (?<jira_username>[^\s]*) (?:[^\s]*\s){2}\"(?<method>[^\s]*) (?<uri>[^\s]*) (?<protocol>[^\"]*)\" (?<response_code>[^\s]*) (?<bytes>[^\s]*) (?<response_time>[^\s]*) \"(?<referrer>[^\"]*)\" \"(?<user_agent>[^\"]*)\" \"(?<jira_session_id>[^\"]*)\""  nodrop
| where method matches "{{method}}" and response_code matches "{{response_code}}"
| where !isEmpty(response_code)
| timeslice 1h
| parse regex field=uri "/browse/(?<project>[^-]*)-(?<issue>\d+)" nodrop
```

**Jira/Access/Jira Request Usage**
```
_sourceCategory={{JIRALocalFileSource}} 
| parse regex "^(?<src_ip>[^\s]*) (?<jira_request_id>[^\s]*) (?<jira_username>[^\s]*) (?:[^\s]*\s){2}\"(?<method>[^\s]*) (?<uri>[^\s]*) (?<protocol>[^\"]*)\" (?<response_code>[^\s]*) (?<bytes>[^\s]*) \"(?<referrer>[^\"]*)\" \"(?<user_agent>[^\"]*)\"" nodrop
| parse regex "^(?<src_ip>[^\s]*) (?<jira_request_id>[^\s]*) (?<jira_username>[^\s]*) (?:[^\s]*\s){2}\"(?<method>[^\s]*) (?<uri>[^\s]*) (?<protocol>[^\"]*)\" (?<response_code>[^\s]*) (?<bytes>[^\s]*) (?<response_time>[^\s]*) \"(?<referrer>[^\"]*)\" \"(?<user_agent>[^\"]*)\" \"(?<jira_session_id>[^\"]*)\""  nodrop
| parse regex field=uri "/browse/(?<project>[^-]*)-(?<issue>\d+)" nodrop
```

**Jira/Access/Requests breakdown by Project**
```
_sourceCategory={{JIRALocalFileSource}} 
| parse regex "^(?<src_ip>[^\s]*) (?<jira_request_id>[^\s]*) (?<jira_username>[^\s]*) (?:[^\s]*\s){2}\"(?<method>[^\s]*) (?<uri>[^\s]*) (?<protocol>[^\"]*)\" (?<response_code>[^\s]*) (?<bytes>[^\s]*) \"(?<referrer>[^\"]*)\" \"(?<user_agent>[^\"]*)\"" nodrop
| parse regex "^(?<src_ip>[^\s]*) (?<jira_request_id>[^\s]*) (?<jira_username>[^\s]*) (?:[^\s]*\s){2}\"(?<method>[^\s]*) (?<uri>[^\s]*) (?<protocol>[^\"]*)\" (?<response_code>[^\s]*) (?<bytes>[^\s]*) (?<response_time>[^\s]*) \"(?<referrer>[^\"]*)\" \"(?<user_agent>[^\"]*)\" \"(?<jira_session_id>[^\"]*)\""  nodrop
| parse regex field=uri "/browse/(?<project>[^-]*)-(?<issue>\d+)"
```

**Jira/Access/Requests by Project**
```
_sourceCategory={{JIRALocalFileSource}} 
| parse regex "^(?<src_ip>[^\s]*) (?<jira_request_id>[^\s]*) (?<jira_username>[^\s]*) (?:[^\s]*\s){2}\"(?<method>[^\s]*) (?<uri>[^\s]*) (?<protocol>[^\"]*)\" (?<response_code>[^\s]*) (?<bytes>[^\s]*) \"(?<referrer>[^\"]*)\" \"(?<user_agent>[^\"]*)\"" nodrop
| parse regex "^(?<src_ip>[^\s]*) (?<jira_request_id>[^\s]*) (?<jira_username>[^\s]*) (?:[^\s]*\s){2}\"(?<method>[^\s]*) (?<uri>[^\s]*) (?<protocol>[^\"]*)\" (?<response_code>[^\s]*) (?<bytes>[^\s]*) (?<response_time>[^\s]*) \"(?<referrer>[^\"]*)\" \"(?<user_agent>[^\"]*)\" \"(?<jira_session_id>[^\"]*)\""  nodrop
| parse regex field=uri "/browse/(?<project>[^-]*)-(?<issue>\d+)"
```

**Jira/Catalina/Breakdown by Severity**
```
_sourceCategory={{JIRALocalFileSource}}   !(URI) !(*mail)  (INFO or WARN or FATAL or ERROR or DEBUG)
| parse "* * * * * *" as date,time,module,severity,caller,msg
```

**Jira/Catalina/Errors**
```
_sourceCategory={{JIRALocalFileSource}}  
| parse "* * * * * *" as date,time,module,severity,caller,msg
```

**Jira/Catalina/Exceptions Over Time**
```
_sourceCategory={{JIRALocalFileSource}}  (error or fail* or exception)
| parse "* * * * * *" as date,time,module,severity,caller,msg nodrop
```

**Jira/Catalina/Requests Over Time**
```
_sourceCategory={{JIRALocalFileSource}} 
| parse "URI *," as URI
| parse regex "\d{2}-\w{3}-\d{4}\s\d{2}:\d{2}:\d{2}.\d{3}\s(?<log_level>\w+)\s\[(?<thread>[^\]]+)\]\s(?<component>\S+)\s(?<message>.*)"
```

**Jira/Catalina/Top 15 URIs**
```
_sourceCategory={{JIRALocalFileSource}} 
| parse "URI *," as URI
| parse regex "\d{2}-\w{3}-\d{4}\s\d{2}:\d{2}:\d{2}.\d{3}\s(?<log_level>\w+)\s\[(?<thread>[^\]]+)\]\s(?<component>\S+)\s(?<message>.*)"
```

**Jira/Issue Details/?Issue Summary by Event Name?**
```
_sourceCategory={{JIRAWebhookEventsDataSource}}  issue
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels 
| where   project_name matches "{{project_name}}"  AND issue_key matches "{{issue_key}}" AND type matches "{{issue_type}}" AND priority matches "{{priority}}" AND status_category matches "{{status_category}}" AND status matches "{{status}}"
| json field=change_log "items" as changes
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss") as date_time
| parse regex field=jira_self "(?<base_url>[\S]+\/rest)[\S]+" nodrop
| parse regex field=jira_self "(?<base_url>[\S]+\/jira)[\S]+" nodrop
```

**Jira/Issue Details/Avg Time Taken to close Issues by User**
```
_sourceCategory={{JIRAWebhookEventsDataSource}}  *issue*  Done statusCategory issue assignee 
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  
| where   project_name matches "{{project_name}}" AND issue_key matches "{{issue_key}}" AND type matches "{{issue_type}}" AND priority matches "{{priority}}" AND status_category matches "{{status_category}}" AND status matches "{{status}}"
| isNull(issue_assignee) ? "Unassigned" : issue_assignee as issue_assignee
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| where component matches "{{components}}" and  label matches "{{label}}"
| where status_category="Done"
| json field=change_log "items" as changes
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss", "UTC") as date_time
| json "issue.fields.resolutiondate", "issue.fields.created" as issue_resolution, issue_creation
| parseDate(issue_resolution, "yyyy-MM-dd'T'HH:mm:ss.SSSZ") as issue_resolution_milliseconds
| parseDate(issue_creation, "yyyy-MM-dd'T'HH:mm:ss.SSSZ") as issue_creation_milliseconds
| issue_resolution_milliseconds - issue_creation_milliseconds as ms_to_close_issue
| ms_to_close_issue/3600000 as hours_to_close_issue
| parse regex field=jira_self "(?<base_url>.*?//.*?)\/" 
| concat(base_url,"/browse/", issue_key) as issue_url
| tourl(issue_url, issue_key) as issue
| json field=change_log "items[1].toString" as to_String
| json field=change_log "items[1].fromString" as from_String
| json field=change_log "items[1].field" as fieldId
| json field=change_log "items[1].fieldtype" as fieldType
```

**Jira/Issue Details/Avg. Time to Close Issues by Project**
```
_sourceCategory={{JIRAWebhookEventsDataSource}}  *issue*  Done statusCategory issue assignee 
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  
| where   project_name matches "{{project_name}}" AND issue_key matches "{{issue_key}}" AND type matches "{{issue_type}}" AND priority matches "{{priority}}" AND status_category matches "{{status_category}}" AND status matches "{{status}}"
| isNull(issue_assignee) ? "Unassigned" : issue_assignee as issue_assignee
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| where component matches "{{components}}" and  label matches "{{label}}"
| where status_category="Done"
| json field=change_log "items" as changes
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss", "UTC") as date_time
| json "issue.fields.resolutiondate", "issue.fields.created" as issue_resolution, issue_creation
| parseDate(issue_resolution, "yyyy-MM-dd'T'HH:mm:ss.SSSZ") as issue_resolution_milliseconds
| parseDate(issue_creation, "yyyy-MM-dd'T'HH:mm:ss.SSSZ") as issue_creation_milliseconds
| issue_resolution_milliseconds - issue_creation_milliseconds as ms_to_close_issue
| ms_to_close_issue/3600000 as hours_to_close_issue
| parse regex field=jira_self "(?<base_url>.*?//.*?)\/" 
| concat(base_url,"/browse/", issue_key) as issue_url
| tourl(issue_url, issue_key) as issue
| json field=change_log "items[1].toString" as to_String
| json field=change_log "items[1].fromString" as from_String
| json field=change_log "items[1].field" as fieldId
| json field=change_log "items[1].fieldtype" as fieldType
```

**Jira/Issue Details/Issues Created Vs Closed**
```
_sourceCategory={{JIRAWebhookEventsDataSource}}  *issue*
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| where   project_name matches "{{project_name}}"  AND issue_key matches "{{issue_key}}" AND type matches "{{issue_type}}" AND priority matches "{{priority}}" AND status_category matches "{{status_category}}" AND status matches "{{status}}"
| isNull(issue_assignee) ? "Unassigned" : issue_assignee as issue_assignee
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| where component matches "{{components}}" and  label matches "{{label}}"
| where status_category in ("To Do","Complete")
| json field=change_log "items" as changes  
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss", "UTC") as date_time
| parse regex field=jira_self "(?<base_url>.*?//.*?)\/" 
```

**Jira/Issue Details/Issues Escalated to the Highest Priority**
```
_sourceCategory={{JIRAWebhookEventsDataSource}}  *issue*
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, summary, priority, components, labels  nodrop
| where   project_name matches "{{project_name}}" AND issue_key matches "{{issue_key}}" AND type matches "{{issue_type}}" AND priority matches "{{priority}}" AND status_category matches "{{status_category}}" AND status matches "{{status}}"
| isNull(issue_assignee) ? "Unassigned" : issue_assignee as assignee
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| where component matches "{{components}}" and  label matches "{{label}}"
| json field=change_log "items" as changes
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss", "UTC") as date_time
| parse regex field=jira_self "(?<base_url>.*?//.*?)\/" 
| concat(base_url,"/browse/", issue_key) as issue_url
| tourl(issue_url, issue_key) as issue
| json field=change_log "items[0].field", "items[0].from", "items[0].to" as change_field, change_from,  change_to
```

**Jira/Issue Details/Issues Reopened**
```
_sourceCategory={{JIRAWebhookEventsDataSource}}  *issue*
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| where   project_name matches "{{project_name}}" AND issue_key matches "{{issue_key}}" AND type matches "{{issue_type}}" AND priority matches "{{priority}}" AND status_category matches "{{status_category}}" AND status matches "{{status}}"
| isNull(issue_assignee) ? "Unassigned" : issue_assignee as assignee
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| where component matches "{{components}}" and  label matches "{{label}}"
| json field=change_log "items" as changes
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss", "UTC") as date_time
| parse regex field=jira_self "(?<base_url>.*?//.*?)\/" 
| concat(base_url,"/browse/", issue_key) as issue_url
| tourl(issue_url, issue_key) as issue
| json field=change_log "items[1].toString" as to_String
| json field=change_log "items[1].fromString" as from_String
| json field=change_log "items[1].field" as fieldId
| json field=change_log "items[1].fieldtype" as fieldType
```

**Jira/Issue Details/Issues Reopened - One Month Comparison**
```
_sourceCategory={{JIRAWebhookEventsDataSource}}  *issue*
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| where   project_name matches "{{project_name}}" AND issue_key matches "{{issue_key}}" AND type matches "{{issue_type}}" AND priority matches "{{priority}}" AND status_category matches "{{status_category}}" AND status matches "{{status}}"
| isNull(issue_assignee) ? "Unassigned" : issue_assignee as issue_assignee
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| where component matches "{{components}}" and  label matches "{{label}}"
| json field=change_log "items" as changes
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss", "UTC") as date_time
| parse regex field=jira_self "(?<base_url>.*?//.*?)\/" 
| concat(base_url,"/browse/", issue_key) as issue_url
| tourl(issue_url, issue_key) as issue
| json field=change_log "items[1].toString" as to_String
| json field=change_log "items[1].fromString" as from_String
| json field=change_log "items[1].field" as fieldId
| json field=change_log "items[1].fieldtype" as fieldType
```

**Jira/Issue Details/Time in Hours to Close Issues**
```
_sourceCategory={{JIRAWebhookEventsDataSource}}  *issue*  Done statusCategory issue assignee 
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, summary, priority, components, labels  
| where   project_name matches "*" AND issue_key matches "*" AND type matches "*" AND priority matches "*" AND status_category matches "*" AND status matches "*"
| isNull(issue_assignee) ? "Unassigned" : issue_assignee as assignee
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| where component matches "*" and  label matches "*"
| where status_category="Done"
| json field=change_log "items" as changes
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss", "UTC") as date_time
| json "issue.fields.resolutiondate", "issue.fields.created" as issue_resolution, issue_creation
| parseDate(issue_resolution, "yyyy-MM-dd'T'HH:mm:ss.SSSZ") as issue_resolution_milliseconds
| parseDate(issue_creation, "yyyy-MM-dd'T'HH:mm:ss.SSSZ") as issue_creation_milliseconds
| issue_resolution_milliseconds - issue_creation_milliseconds as ms_to_close_issue
| ms_to_close_issue/3600000 as hours_to_close_issue
| format( "%.2f",hours_to_close_issue) as hours_to_close
| parse regex field=jira_self "(?<base_url>.*?//.*?)\/" 
| concat(base_url,"/browse/", issue_key) as issue_url
| tourl(issue_url, issue_key) as issue
| json field=change_log "items[1].toString" as to_String
| json field=change_log "items[1].fromString" as from_String
| json field=change_log "items[1].field" as fieldId
| json field=change_log "items[1].fieldtype" as fieldType
```

**Jira/Issue Details/Top 10 Issue Assignee**
```
_sourceCategory={{JIRAWebhookEventsDataSource}}  *issue*
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

**Jira/Issue Details/Top 10 Issue creator**
```
_sourceCategory={{JIRAWebhookEventsDataSource}}   *issue*
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| where   project_name matches "{{project_name}}" AND issue_key matches "{{issue_key}}" AND type matches "{{issue_type}}" AND priority matches "{{priority}}" AND status_category matches "{{status_category}}" AND status matches "{{status}}"
| isNull(issue_assignee) ? "Unassigned" : issue_assignee as issue_assignee
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| where component matches "{{components}}" and  label matches "{{label}}"
| where status_category="To Do"
| json field=change_log "items" as changes
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss", "UTC") as date_time
| parse regex field=jira_self "(?<base_url>.*?//.*?)\/" 
```

**Jira/Issue Details/Unassigned Issues**
```
_sourceCategory={{JIRAWebhookEventsDataSource}}  *issue* 
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| where   project_name matches "{{project_name}}" AND issue_key matches "{{issue_key}}" AND type matches "{{issue_type}}" AND priority matches "{{priority}}" AND status_category matches "{{status_category}}" AND status matches "{{status}}"
| isNull(issue_assignee) ? "Unassigned" : issue_assignee as issue_assignee
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| where component matches "{{components}}" and  label matches "{{label}}"
| json field=change_log "items" as changes nodrop
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss", "UTC") as date_time
| parse regex field=jira_self "(?<base_url>.*?//.*?)\/" 
```

**Jira/Issue Overview/Issues by Component**
```
_sourceCategory={{JIRAWebhookEventsDataSource}}  *issue*
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| where   project_name matches "{{project_name}}"  AND issue_key matches "{{issue_key}}" AND type matches "{{issue_type}}" AND priority matches "{{priority}}" AND status_category matches "{{status_category}}" AND status matches "{{status}}"
| isNull(issue_assignee) ? "Unassigned" : issue_assignee as issue_assignee
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| where component matches "{{components}}" and  label matches "{{label}}"
| json field=change_log "items" as changes
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss", "UTC") as date_time
| parse regex field=jira_self "(?<base_url>.*?//.*?)\/"
```

**Jira/Issue Overview/Issues by Priority and Project**
```
_sourceCategory={{JIRAWebhookEventsDataSource}}  *issue*
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| where   project_name matches "{{project_name}}"  AND issue_key matches "{{issue_key}}" AND type matches "{{issue_type}}" AND priority matches "{{priority}}" AND status_category matches "{{status_category}}" AND status matches "{{status}}"
| isNull(issue_assignee) ? "Unassigned" : issue_assignee as issue_assignee
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| where component matches "{{components}}" and  label matches "{{label}}"
| where status_category="To Do"
| json field=change_log "items" as changes
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss", "UTC") as date_time
| parse regex field=jira_self "(?<base_url>.*?//.*?)\/" 
```

**Jira/Issue Overview/Issues by Project**
```
_sourceCategory={{JIRAWebhookEventsDataSource}}   *issue*
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| where   project_name matches "{{project_name}}"  AND issue_key matches "{{issue_key}}" AND type matches "{{issue_type}}" AND priority matches "{{priority}}" AND status_category matches "{{status_category}}" AND status matches "{{status}}"
| isNull(issue_assignee) ? "Unassigned" : issue_assignee as issue_assignee
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| where component matches "{{components}}" and  label matches "{{label}}"
| json field=change_log "items" as changes
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss", "UTC") as date_time
| parse regex field=jira_self "(?<base_url>.*?//.*?)\/" 
```

**Jira/Issue Overview/Issues by Type**
```
_sourceCategory={{JIRAWebhookEventsDataSource}}   *issue*
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| where   project_name matches "{{project_name}}"  AND issue_key matches "{{issue_key}}" AND type matches "{{issue_type}}" AND priority matches "{{priority}}" AND status_category matches "{{status_category}}" AND status matches "{{status}}"
| isNull(issue_assignee) ? "Unassigned" : issue_assignee as issue_assignee
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| where component matches "{{components}}" and  label matches "{{label}}"
| json field=change_log "items" as changes
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss", "UTC") as date_time
| parse regex field=jira_self "(?<base_url>.*?//.*?)\/" 
```

**Jira/Issue Overview/Issues by Type Over Time**
```
_sourceCategory={{JIRAWebhookEventsDataSource}}   issue_*
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| where   project_name matches "{{project_name}}"  AND issue_key matches "{{issue_key}}" AND type matches "{{issue_type}}" AND priority matches "{{priority}}" AND status_category matches "{{status_category}}" AND status matches "{{status}}"
| isNull(issue_assignee) ? "Unassigned" : issue_assignee as issue_assignee
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| where component matches "{{components}}" and  label matches "{{label}}"
| where status_category="To Do"
| json field=change_log "items" as changes
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss", "UTC") as date_time
| parse regex field=jira_self "(?<base_url>.*?//.*?)\/"
```

**Jira/Issue Overview/Issues Closed**
```
_sourceCategory={{JIRAWebhookEventsDataSource}}  *issue*
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| where   project_name matches "{{project_name}}"  AND issue_key matches "{{issue_key}}" AND type matches "{{issue_type}}" AND priority matches "{{priority}}" AND status_category matches "{{status_category}}" AND status matches "{{status}}"
| isNull(issue_assignee) ? "Unassigned" : issue_assignee as issue_assignee
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| where component matches "{{components}}" and  label matches "{{label}}"
| json field=change_log "items" as changes
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss", "UTC") as date_time
| parse regex field=jira_self "(?<base_url>.*?//.*?)\/" 
```

**Jira/Issue Overview/Issues Closed by assignee**
```
_sourceCategory={{JIRAWebhookEventsDataSource}}  *issue*
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| where   project_name matches "{{project_name}}"  AND issue_key matches "{{issue_key}}" AND type matches "{{issue_type}}" AND priority matches "{{priority}}" AND status_category matches "{{status_category}}" AND status matches "{{status}}"
| isNull(issue_assignee) ? "Unassigned" : issue_assignee as issue_assignee
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| where component matches "{{components}}" and  label matches "{{label}}"
| json field=change_log "items" as changes
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss", "UTC") as date_time
| parse regex field=jira_self "(?<base_url>.*?//.*?)\/" 
```

**Jira/Issue Overview/Issues Closed by Priority**
```
_sourceCategory={{JIRAWebhookEventsDataSource}}  *issue*
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| where   project_name matches "{{project_name}}"  AND issue_key matches "{{issue_key}}" AND type matches "{{issue_type}}" AND priority matches "{{priority}}" AND status_category matches "{{status_category}}" AND status matches "{{status}}"
| isNull(issue_assignee) ? "Unassigned" : issue_assignee as issue_assignee
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| where component matches "{{components}}" and  label matches "{{label}}"
| json field=change_log "items" as changes
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss", "UTC") as date_time
| parse regex field=jira_self "(?<base_url>.*?//.*?)\/"
```

**Jira/Issue Overview/Issues Closed by Project**
```
_sourceCategory={{JIRAWebhookEventsDataSource}}  *issue*
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| where   project_name matches "{{project_name}}"  AND issue_key matches "{{issue_key}}" AND type matches "{{issue_type}}" AND priority matches "{{priority}}" AND status_category matches "{{status_category}}" AND status matches "{{status}}"
| isNull(issue_assignee) ? "Unassigned" : issue_assignee as issue_assignee
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| where component matches "{{components}}" and  label matches "{{label}}"
| json field=change_log "items" as changes
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss", "UTC") as date_time
| parse regex field=jira_self "(?<base_url>.*?//.*?)\/"
```

**Jira/Issue Overview/Issues Created**
```
_sourceCategory={{JIRAWebhookEventsDataSource}}  *issue*
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| where   project_name matches "{{project_name}}"  AND issue_key matches "{{issue_key}}" AND type matches "{{issue_type}}" AND priority matches "{{priority}}" AND status_category matches "{{status_category}}" AND status matches "{{status}}"
| isNull(issue_assignee) ? "Unassigned" : issue_assignee as issue_assignee
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| where component matches "{{components}}" and  label matches "{{label}}"
| where status_category="To Do"
| json field=change_log "items" as changes
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss", "UTC") as date_time
| parse regex field=jira_self "(?<base_url>.*?//.*?)\/" 
```

**Jira/Issue Overview/Issues In Progress**
```
_sourceCategory={{JIRAWebhookEventsDataSource}}  *issue*
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| where   project_name matches "{{project_name}}"  AND issue_key matches "{{issue_key}}" AND type matches "{{issue_type}}" AND priority matches "{{priority}}" AND status_category matches "{{status_category}}" AND status matches "{{status}}"
| isNull(issue_assignee) ? "Unassigned" : issue_assignee as issue_assignee
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| where component matches "{{components}}" and  label matches "{{label}}"
| json field=change_log "items" as changes
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss", "UTC") as date_time
| parse regex field=jira_self "(?<base_url>.*?//.*?)\/" 
```

**Jira/Issue Overview/Issues In Progress by assignee**
```
_sourceCategory={{JIRAWebhookEventsDataSource}}  *issue*
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| where   project_name matches "{{project_name}}"  AND issue_key matches "{{issue_key}}" AND type matches "{{issue_type}}" AND priority matches "{{priority}}" AND status_category matches "{{status_category}}" AND status matches "{{status}}"
| isNull(issue_assignee) ? "Unassigned" : issue_assignee as issue_assignee
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| where component matches "{{components}}" and  label matches "{{label}}"
| json field=change_log "items" as changes
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss", "UTC") as date_time
| parse regex field=jira_self "(?<base_url>.*?//.*?)\/" 
```

**Jira/Issue Overview/Issues In Progress by Priority**
```
_sourceCategory={{JIRAWebhookEventsDataSource}}  *issue*
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| where   project_name matches "{{project_name}}"  AND issue_key matches "{{issue_key}}" AND type matches "{{issue_type}}" AND priority matches "{{priority}}" AND status_category matches "{{status_category}}" AND status matches "{{status}}"
| isNull(issue_assignee) ? "Unassigned" : issue_assignee as issue_assignee
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| where component matches "{{components}}" and  label matches "{{label}}"
| json field=change_log "items" as changes
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss", "UTC") as date_time
| parse regex field=jira_self "(?<base_url>.*?//.*?)\/" 
```

**Jira/Issue Overview/Issues In Progress by Project**
```
_sourceCategory={{JIRAWebhookEventsDataSource}}  *issue*
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| where   project_name matches "{{project_name}}"  AND issue_key matches "{{issue_key}}" AND type matches "{{issue_type}}" AND priority matches "{{priority}}" AND status_category matches "{{status_category}}" AND status matches "{{status}}"
| isNull(issue_assignee) ? "Unassigned" : issue_assignee as issue_assignee
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| where component matches "{{components}}" and  label matches "{{label}}"
| json field=change_log "items" as changes
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss", "UTC") as date_time
| parse regex field=jira_self "(?<base_url>.*?//.*?)\/" 
```

**Jira/Issue Overview/Issues Reopened**
```
_sourceCategory={{JIRAWebhookEventsDataSource}}  *issue*
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| where   project_name matches "{{project_name}}"  AND issue_key matches "{{issue_key}}" AND type matches "{{issue_type}}" AND priority matches "{{priority}}" AND status_category matches "{{status_category}}" AND status matches "{{status}}"
| isNull(issue_assignee) ? "Unassigned" : issue_assignee as issue_assignee
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| where component matches "{{components}}" and  label matches "{{label}}"| json field=change_log "items" as changes
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss", "UTC") as date_time
| parse regex field=jira_self "(?<base_url>.*?//.*?)\/" 
| concat(base_url,"/browse/", issue_key) as issue_url
| tourl(issue_url, issue_key) as issue
| json field=change_log "items[1].toString" as to_String
| json field=change_log "items[1].fromString" as from_String
| json field=change_log "items[1].field" as fieldId
| json field=change_log "items[1].fieldtype" as fieldType
```

**Jira/Issue Overview/Issues Reopened by assignee**
```
_sourceCategory={{JIRAWebhookEventsDataSource}}  *issue*
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| where   project_name matches "{{project_name}}"  AND issue_key matches "{{issue_key}}" AND type matches "{{issue_type}}" AND priority matches "{{priority}}" AND status_category matches "{{status_category}}" AND status matches "{{status}}"
| isNull(issue_assignee) ? "Unassigned" : issue_assignee as issue_assignee
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| where component matches "{{components}}" and  label matches "{{label}}"
| json field=change_log "items" as changes
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss", "UTC") as date_time
| parse regex field=jira_self "(?<base_url>.*?//.*?)\/" 
| concat("https://",base_url,"/browse/", issue_key) as issue_url
| tourl(issue_url, issue_key) as issue
| json field=change_log "items[1].toString" as to_String
| json field=change_log "items[1].fromString" as from_String
| json field=change_log "items[1].field" as fieldId
| json field=change_log "items[1].fieldtype" as fieldType
```

**Jira/Issue Overview/Issues Reopened by Priority**
```
_sourceCategory={{JIRAWebhookEventsDataSource}}  *issue*
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| where   project_name matches "{{project_name}}"  AND issue_key matches "{{issue_key}}" AND type matches "{{issue_type}}" AND priority matches "{{priority}}" AND status_category matches "{{status_category}}" AND status matches "{{status}}"
| isNull(issue_assignee) ? "Unassigned" : issue_assignee as issue_assignee
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| where component matches "{{components}}" and  label matches "{{label}}"
| json field=change_log "items" as changes
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss", "UTC") as date_time
| parse regex field=jira_self "(?<base_url>.*?//.*?)\/" 
| concat("https://",base_url,"/browse/", issue_key) as issue_url
| tourl(issue_url, issue_key) as issue
| json field=change_log "items[1].toString" as to_String
| json field=change_log "items[1].fromString" as from_String
| json field=change_log "items[1].field" as fieldId
| json field=change_log "items[1].fieldtype" as fieldType
```

**Jira/Issue Overview/Issues Reopened by Project**
```
_sourceCategory={{JIRAWebhookEventsDataSource}}  *issue*
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| where   project_name matches "{{project_name}}"  AND issue_key matches "{{issue_key}}" AND type matches "{{issue_type}}" AND priority matches "{{priority}}" AND status_category matches "{{status_category}}" AND status matches "{{status}}"
| isNull(issue_assignee) ? "Unassigned" : issue_assignee as issue_assignee
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| where component matches "{{components}}" and  label matches "{{label}}"
| json field=change_log "items" as changes
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss", "UTC") as date_time
| parse regex field=jira_self "(?<base_url>.*?//.*?)\/" 
| concat("https://",base_url,"/browse/", issue_key) as issue_url
| tourl(issue_url, issue_key) as issue
| json field=change_log "items[1].toString" as to_String
| json field=change_log "items[1].fromString" as from_String
| json field=change_log "items[1].field" as fieldId
| json field=change_log "items[1].fieldtype" as fieldType
```

**Jira/Overview/Bytes Sent (MB)**
```
_sourceCategory={{JIRALocalFileSource}} 
| parse regex "^(?<src_ip>[^\s]*) (?<jira_request_id>[^\s]*) (?<jira_username>[^\s]*) (?:[^\s]*\s){2}\"(?<method>[^\s]*) (?<uri>[^\s]*) (?<protocol>[^\"]*)\" (?<response_code>[^\s]*) (?<bytes>[^\s]*) \"(?<referrer>[^\"]*)\" \"(?<user_agent>[^\"]*)\"" nodrop
| parse regex "^(?<src_ip>[^\s]*) (?<jira_request_id>[^\s]*) (?<jira_username>[^\s]*) (?:[^\s]*\s){2}\"(?<method>[^\s]*) (?<uri>[^\s]*) (?<protocol>[^\"]*)\" (?<response_code>[^\s]*) (?<bytes>[^\s]*) (?<response_time>[^\s]*) \"(?<referrer>[^\"]*)\" \"(?<user_agent>[^\"]*)\" \"(?<jira_session_id>[^\"]*)\""  nodrop
| parse regex field=uri "/browse/(?<project>[^-]*)-(?<issue>\d+)" nodrop
```

**Jira/Overview/Catalina Requests**
```
_sourceCategory={{JIRALocalFileSource}} 
| parse "URI *," as URI
| parse regex "\d{2}-\w{3}-\d{4}\s\d{2}:\d{2}:\d{2}.\d{3}\s(?<log_level>\w+)\s\[(?<thread>[^\]]+)\]\s(?<component>\S+)\s(?<message>.*)"
```

**Jira/Overview/Error Over Time with One Day Time Comparison**
```
_sourceCategory={{JIRALocalFileSource}}   (error or excepttion)
| parse "[*] [*] *" as date_time,severity,msg 
```

**Jira/Overview/Errors - One Day Time Comparison**
```
_sourceCategory={{JIRALocalFileSource}}  
| parse "* * * * * *" as date,time,module,severity,caller,msg
```

**Jira/Overview/Logins - One Day Time Comparison**
```
_sourceCategory={{JIRALocalFileSource}} 
| parse regex ".* (?<ip>[\d]+.[\d]+.[\d]+.[\d]+) [\S]+ The user '(?<user>[\S]+)' has (?<result>PASSED|FAILED) authentication" 
```

**Jira/Recent Issue Changes/Recent Issue Changes Over Time**
```
_sourceCategory={{JIRAWebhookEventsDataSource}}  *issue*
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

**Jira/Security/Failed Logins**
```
_sourceCategory={{JIRALocalFileSource}} 
| parse "The user '*' has * authentication." as user,result
```

**Jira/Security/Failed Logins - One Day Time Comparison**
```
_sourceCategory={{JIRALocalFileSource}}  
| parse regex ".* (?<ip>[\d]+.[\d]+.[\d]+.[\d]+) [\S]+ The user '(?<user>[\S]+)' has (?<result>PASSED|FAILED) authentication" 
```

**Jira/Security/Security Messages**
```
_sourceCategory={{JIRALocalFileSource}}  !(created or destroyed or PASSED or FAILED )
| parse "* * * *" as date_time,nodule,user,msg 
```

**Jira/Security/Successful Logins - One Day Time Comparison**
```
_sourceCategory={{JIRALocalFileSource}}  
| parse regex ".* (?<ip>[\d]+.[\d]+.[\d]+.[\d]+) [\S]+ The user '(?<user>[\S]+)' has (?<result>PASSED|FAILED) authentication" 
```

**Jira/Security/Successful Logins By User**
```
_sourceCategory={{JIRALocalFileSource}} 
| parse "The user '*' has * authentication." as user,authentication
```

**Jira/Security/Top 10 Active Users with Failed Logins**
```
_sourceCategory={{JIRALocalFileSource}}   FAILED
| parse regex ".* (?<ip>[\d]+.[\d]+.[\d]+.[\d]+) [\S]+ The user '(?<user>[\S]+)' has (?<result>PASSED|FAILED) authentication" 
```

**Jira/Security/Top 10 Active Users with Successful Logins**
```
_sourceCategory={{JIRALocalFileSource}}   PASSED
| parse regex ".* (?<ip>[\d]+.[\d]+.[\d]+.[\d]+) [\S]+ The user '(?<user>[\S]+)' has (?<result>PASSED|FAILED) authentication" 
```

**Jira/Sprints Events/Events**
```
_sourceCategory={{JIRAWebhookEventsDataSource}}  (sprint_started or sprint_closed or sprint_created or sprint_deleted or sprint_updated)
| json field=_raw "webhookEvent" as event_name
```

**Jira/Sprints Events/Sprint Closed**
```
_sourceCategory={{JIRAWebhookEventsDataSource}}  (sprint_started or sprint_closed or sprint_created or sprint_deleted or sprint_updated)
| json field=_raw "webhookEvent", "sprint.name", "sprint.state", "sprint.startDate", "sprint.endDate", "sprint.goal", "sprint.originBoardId", "sprint.completeDate" as event_name, sprint_name, sprint_state, sprint_startDate, sprint_endDate, sprint_goal, sprinit_originBoardID, sprint_completeDate nodrop
```

**Jira/Sprints Events/Sprint Created**
```
_sourceCategory={{JIRAWebhookEventsDataSource}}  (sprint_started or sprint_closed or sprint_created or sprint_deleted or sprint_updated)
| json field=_raw "webhookEvent", "sprint.name", "sprint.state", "sprint.originBoardId" as event_name, sprint_name, sprint_state, sprinit_originBoardID nodrop
```

**Jira/Sprints Events/Sprint Events - One Week Comparison**
```
_sourceCategory={{JIRAWebhookEventsDataSource}}  (sprint_started or sprint_closed or sprint_created or sprint_deleted or sprint_updated)
| json field=_raw "webhookEvent", "sprint.name", "sprint.state", "sprint.startDate", "sprint.endDate", "sprint.goal", "sprint.originBoardId" as event_name, sprint_name, sprint_state, sprint_startDate, sprint_endDate, sprint_goal, sprinit_originBoardID nodrop
```

**Jira/Sprints Events/Sprint Started**
```
_sourceCategory={{JIRAWebhookEventsDataSource}}  (sprint_started or sprint_closed or sprint_created or sprint_deleted or sprint_updated)
| json field=_raw "webhookEvent", "sprint.name", "sprint.state", "sprint.startDate", "sprint.endDate", "sprint.goal", "sprint.originBoardId" as event_name, sprint_name, sprint_state, sprint_startDate, sprint_endDate, sprint_goal, sprinit_originBoardID nodrop
```

**Jira/User Events/User Events**
```
_sourceCategory={{JIRAWebhookEventsDataSource}}  user_*
| json field=_raw "webhookEvent" as event_type
```

**Jira/User Events/User Events - One Week Comparison**
```
_sourceCategory={{JIRAWebhookEventsDataSource}}  user_*
| json field=_raw "webhookEvent" as event_type
| where event_type matches "user_*"
| json  "timestamp"  as timestamp
```

**Jira/User Events/Users Created**
```
_sourceCategory={{JIRAWebhookEventsDataSource}}  user_created
| json field=_raw "webhookEvent" as event_type
| where event_type = "user_created"
| json  "user.key", "user.displayName", "user.emailAddress", "user.self"  as account_id, user_name, user_email, url
```

**Jira/User Events/Users Deleted**
```
_sourceCategory={{JIRAWebhookEventsDataSource}}  user_deleted
| json field=_raw "webhookEvent" as event_type
| where event_type = "user_deleted"
| json  "user.key", "user.name" as account_id, user_name
```

**Jira/User Events/Users Updated**
```
_sourceCategory={{JIRAWebhookEventsDataSource}}  user_updated
| json field=_raw "webhookEvent" as event_type
| where event_type = "user_updated"
| json  "user.key", "user.displayName", "user.emailAddress", "user.self"  as account_id, user_name, user_email, url
```


