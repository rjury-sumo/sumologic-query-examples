# Parsers For Jira - OpenTelemetry

**Jira - OpenTelemetry/Jira - Access/Access Methods**
```
sumo.datasource=jira
| parse regex "^(?<src_ip>[^\s]*) (?<jira_request_id>[^\s]*) (?<jira_username>[^\s]*) (?:[^\s]*\s){2}\"(?<method>[^\s]*) (?<uri>[^\s]*) (?<protocol>[^\"]*)\" (?<response_code>[^\s]*) (?<bytes>[^\s]*) \"(?<referrer>[^\"]*)\" \"(?<user_agent>[^\"]*)\"" nodrop
| parse regex "^(?<src_ip>[^\s]*) (?<jira_request_id>[^\s]*) (?<jira_username>[^\s]*) (?:[^\s]*\s){2}\"(?<method>[^\s]*) (?<uri>[^\s]*) (?<protocol>[^\"]*)\" (?<response_code>[^\s]*) (?<bytes>[^\s]*) (?<response_time>[^\s]*) \"(?<referrer>[^\"]*)\" \"(?<user_agent>[^\"]*)\" \"(?<jira_session_id>[^\"]*)\""  nodrop
| where method matches "{{method}}" and response_code matches "{{response_code}}"
| where !isEmpty(method)
| parse regex field=uri "/browse/(?<project>[^-]*)-(?<issue>\d+)" nodrop
```

**Jira - OpenTelemetry/Jira - Access/Access Methods - One Day Time Comparison**
```
sumo.datasource=jira
| parse regex "^(?<src_ip>[^\s]*) (?<jira_request_id>[^\s]*) (?<jira_username>[^\s]*) (?:[^\s]*\s){2}\"(?<method>[^\s]*) (?<uri>[^\s]*) (?<protocol>[^\"]*)\" (?<response_code>[^\s]*) (?<bytes>[^\s]*) \"(?<referrer>[^\"]*)\" \"(?<user_agent>[^\"]*)\"" nodrop
| parse regex "^(?<src_ip>[^\s]*) (?<jira_request_id>[^\s]*) (?<jira_username>[^\s]*) (?:[^\s]*\s){2}\"(?<method>[^\s]*) (?<uri>[^\s]*) (?<protocol>[^\"]*)\" (?<response_code>[^\s]*) (?<bytes>[^\s]*) (?<response_time>[^\s]*) \"(?<referrer>[^\"]*)\" \"(?<user_agent>[^\"]*)\" \"(?<jira_session_id>[^\"]*)\""  nodrop
| where method matches "{{method}}" and response_code matches "{{response_code}}"
| where !isEmpty(method)
| parse regex field=uri "/browse/(?<project>[^-]*)-(?<issue>\d+)" nodrop
```

**Jira - OpenTelemetry/Jira - Access/Average Response TIme**
```
sumo.datasource=jira
| parse regex "^(?<src_ip>[^\s]*) (?<jira_request_id>[^\s]*) (?<jira_username>[^\s]*) (?:[^\s]*\s){2}\"(?<method>[^\s]*) (?<uri>[^\s]*) (?<protocol>[^\"]*)\" (?<response_code>[^\s]*) (?<bytes>[^\s]*) \"(?<referrer>[^\"]*)\" \"(?<user_agent>[^\"]*)\"" nodrop
| parse regex "^(?<src_ip>[^\s]*) (?<jira_request_id>[^\s]*) (?<jira_username>[^\s]*) (?:[^\s]*\s){2}\"(?<method>[^\s]*) (?<uri>[^\s]*) (?<protocol>[^\"]*)\" (?<response_code>[^\s]*) (?<bytes>[^\s]*) (?<response_time>[^\s]*) \"(?<referrer>[^\"]*)\" \"(?<user_agent>[^\"]*)\" \"(?<jira_session_id>[^\"]*)\""  nodrop
| parse regex field=uri "/browse/(?<project>[^-]*)-(?<issue>\d+)" nodrop
```

**Jira - OpenTelemetry/Jira - Access/Bytes Sent (MB)**
```
sumo.datasource=jira
| parse regex "^(?<src_ip>[^\s]*) (?<jira_request_id>[^\s]*) (?<jira_username>[^\s]*) (?:[^\s]*\s){2}\"(?<method>[^\s]*) (?<uri>[^\s]*) (?<protocol>[^\"]*)\" (?<response_code>[^\s]*) (?<bytes>[^\s]*) \"(?<referrer>[^\"]*)\" \"(?<user_agent>[^\"]*)\"" nodrop
| parse regex "^(?<src_ip>[^\s]*) (?<jira_request_id>[^\s]*) (?<jira_username>[^\s]*) (?:[^\s]*\s){2}\"(?<method>[^\s]*) (?<uri>[^\s]*) (?<protocol>[^\"]*)\" (?<response_code>[^\s]*) (?<bytes>[^\s]*) (?<response_time>[^\s]*) \"(?<referrer>[^\"]*)\" \"(?<user_agent>[^\"]*)\" \"(?<jira_session_id>[^\"]*)\""  nodrop
| parse regex field=uri "/browse/(?<project>[^-]*)-(?<issue>\d+)" nodrop
```

**Jira - OpenTelemetry/Jira - Access/Bytes Sent (MB) - Outlier**
```
sumo.datasource=jira
| parse regex "^(?<src_ip>[^\s]*) (?<jira_request_id>[^\s]*) (?<jira_username>[^\s]*) (?:[^\s]*\s){2}\"(?<method>[^\s]*) (?<uri>[^\s]*) (?<protocol>[^\"]*)\" (?<response_code>[^\s]*) (?<bytes>[^\s]*) \"(?<referrer>[^\"]*)\" \"(?<user_agent>[^\"]*)\"" nodrop
| parse regex "^(?<src_ip>[^\s]*) (?<jira_request_id>[^\s]*) (?<jira_username>[^\s]*) (?:[^\s]*\s){2}\"(?<method>[^\s]*) (?<uri>[^\s]*) (?<protocol>[^\"]*)\" (?<response_code>[^\s]*) (?<bytes>[^\s]*) (?<response_time>[^\s]*) \"(?<referrer>[^\"]*)\" \"(?<user_agent>[^\"]*)\" \"(?<jira_session_id>[^\"]*)\""  nodrop
| parse regex field=uri "/browse/(?<project>[^-]*)-(?<issue>\d+)" nodrop
```

**Jira - OpenTelemetry/Jira - Access/Errors**
```
sumo.datasource=jira  (error or excepttion)
| parse "[*] [*] *" as date_time,severity,msg 
```

**Jira - OpenTelemetry/Jira - Access/Errors Over Time**
```
sumo.datasource=jira  (error or excepttion)
| parse "[*] [*] *" as date_time,severity,msg 
```

**Jira - OpenTelemetry/Jira - Access/HTTP Response Code - One Day Time Compare**
```
sumo.datasource=jira
| parse regex "^(?<src_ip>[^\s]*) (?<jira_request_id>[^\s]*) (?<jira_username>[^\s]*) (?:[^\s]*\s){2}\"(?<method>[^\s]*) (?<uri>[^\s]*) (?<protocol>[^\"]*)\" (?<response_code>[^\s]*) (?<bytes>[^\s]*) \"(?<referrer>[^\"]*)\" \"(?<user_agent>[^\"]*)\"" nodrop
| parse regex "^(?<src_ip>[^\s]*) (?<jira_request_id>[^\s]*) (?<jira_username>[^\s]*) (?:[^\s]*\s){2}\"(?<method>[^\s]*) (?<uri>[^\s]*) (?<protocol>[^\"]*)\" (?<response_code>[^\s]*) (?<bytes>[^\s]*) (?<response_time>[^\s]*) \"(?<referrer>[^\"]*)\" \"(?<user_agent>[^\"]*)\" \"(?<jira_session_id>[^\"]*)\""  nodrop
| where method matches "{{method}}" and response_code matches "{{response_code}}"
| where !isEmpty(response_code)
| parse regex field=uri "/browse/(?<project>[^-]*)-(?<issue>\d+)" nodrop
```

**Jira - OpenTelemetry/Jira - Access/HTTP Response Codes**
```
sumo.datasource=jira
| parse regex "^(?<src_ip>[^\s]*) (?<jira_request_id>[^\s]*) (?<jira_username>[^\s]*) (?:[^\s]*\s){2}\"(?<method>[^\s]*) (?<uri>[^\s]*) (?<protocol>[^\"]*)\" (?<response_code>[^\s]*) (?<bytes>[^\s]*) \"(?<referrer>[^\"]*)\" \"(?<user_agent>[^\"]*)\"" nodrop
| parse regex "^(?<src_ip>[^\s]*) (?<jira_request_id>[^\s]*) (?<jira_username>[^\s]*) (?:[^\s]*\s){2}\"(?<method>[^\s]*) (?<uri>[^\s]*) (?<protocol>[^\"]*)\" (?<response_code>[^\s]*) (?<bytes>[^\s]*) (?<response_time>[^\s]*) \"(?<referrer>[^\"]*)\" \"(?<user_agent>[^\"]*)\" \"(?<jira_session_id>[^\"]*)\""  nodrop
| where method matches "{{method}}" and response_code matches "{{response_code}}"
| where !isEmpty(response_code)
| parse regex field=uri "/browse/(?<project>[^-]*)-(?<issue>\d+)" nodrop
```

**Jira - OpenTelemetry/Jira - Access/HTTP Response Codes Over Time**
```
sumo.datasource=jira !(200)
| parse regex "^(?<src_ip>[^\s]*) (?<jira_request_id>[^\s]*) (?<jira_username>[^\s]*) (?:[^\s]*\s){2}\"(?<method>[^\s]*) (?<uri>[^\s]*) (?<protocol>[^\"]*)\" (?<response_code>[^\s]*) (?<bytes>[^\s]*) \"(?<referrer>[^\"]*)\" \"(?<user_agent>[^\"]*)\"" nodrop
| parse regex "^(?<src_ip>[^\s]*) (?<jira_request_id>[^\s]*) (?<jira_username>[^\s]*) (?:[^\s]*\s){2}\"(?<method>[^\s]*) (?<uri>[^\s]*) (?<protocol>[^\"]*)\" (?<response_code>[^\s]*) (?<bytes>[^\s]*) (?<response_time>[^\s]*) \"(?<referrer>[^\"]*)\" \"(?<user_agent>[^\"]*)\" \"(?<jira_session_id>[^\"]*)\""  nodrop
| where method matches "{{method}}" and response_code matches "{{response_code}}"
| where !isEmpty(response_code)
| timeslice 1h
| parse regex field=uri "/browse/(?<project>[^-]*)-(?<issue>\d+)" nodrop
```

**Jira - OpenTelemetry/Jira - Access/Jira Request Usage**
```
sumo.datasource=jira
| parse regex "^(?<src_ip>[^\s]*) (?<jira_request_id>[^\s]*) (?<jira_username>[^\s]*) (?:[^\s]*\s){2}\"(?<method>[^\s]*) (?<uri>[^\s]*) (?<protocol>[^\"]*)\" (?<response_code>[^\s]*) (?<bytes>[^\s]*) \"(?<referrer>[^\"]*)\" \"(?<user_agent>[^\"]*)\"" nodrop
| parse regex "^(?<src_ip>[^\s]*) (?<jira_request_id>[^\s]*) (?<jira_username>[^\s]*) (?:[^\s]*\s){2}\"(?<method>[^\s]*) (?<uri>[^\s]*) (?<protocol>[^\"]*)\" (?<response_code>[^\s]*) (?<bytes>[^\s]*) (?<response_time>[^\s]*) \"(?<referrer>[^\"]*)\" \"(?<user_agent>[^\"]*)\" \"(?<jira_session_id>[^\"]*)\""  nodrop
| parse regex field=uri "/browse/(?<project>[^-]*)-(?<issue>\d+)" nodrop
```

**Jira - OpenTelemetry/Jira - Access/Requests breakdown by Project**
```
sumo.datasource=jira
| parse regex "^(?<src_ip>[^\s]*) (?<jira_request_id>[^\s]*) (?<jira_username>[^\s]*) (?:[^\s]*\s){2}\"(?<method>[^\s]*) (?<uri>[^\s]*) (?<protocol>[^\"]*)\" (?<response_code>[^\s]*) (?<bytes>[^\s]*) \"(?<referrer>[^\"]*)\" \"(?<user_agent>[^\"]*)\"" nodrop
| parse regex "^(?<src_ip>[^\s]*) (?<jira_request_id>[^\s]*) (?<jira_username>[^\s]*) (?:[^\s]*\s){2}\"(?<method>[^\s]*) (?<uri>[^\s]*) (?<protocol>[^\"]*)\" (?<response_code>[^\s]*) (?<bytes>[^\s]*) (?<response_time>[^\s]*) \"(?<referrer>[^\"]*)\" \"(?<user_agent>[^\"]*)\" \"(?<jira_session_id>[^\"]*)\""  nodrop
| parse regex field=uri "/browse/(?<project>[^-]*)-(?<issue>\d+)"
```

**Jira - OpenTelemetry/Jira - Access/Requests by Project**
```
sumo.datasource=jira
| parse regex "^(?<src_ip>[^\s]*) (?<jira_request_id>[^\s]*) (?<jira_username>[^\s]*) (?:[^\s]*\s){2}\"(?<method>[^\s]*) (?<uri>[^\s]*) (?<protocol>[^\"]*)\" (?<response_code>[^\s]*) (?<bytes>[^\s]*) \"(?<referrer>[^\"]*)\" \"(?<user_agent>[^\"]*)\"" nodrop
| parse regex "^(?<src_ip>[^\s]*) (?<jira_request_id>[^\s]*) (?<jira_username>[^\s]*) (?:[^\s]*\s){2}\"(?<method>[^\s]*) (?<uri>[^\s]*) (?<protocol>[^\"]*)\" (?<response_code>[^\s]*) (?<bytes>[^\s]*) (?<response_time>[^\s]*) \"(?<referrer>[^\"]*)\" \"(?<user_agent>[^\"]*)\" \"(?<jira_session_id>[^\"]*)\""  nodrop
| parse regex field=uri "/browse/(?<project>[^-]*)-(?<issue>\d+)"
```

**Jira - OpenTelemetry/Jira - Catalina/Breakdown by Severity**
```
sumo.datasource=jira  !(URI) !(*mail)  (INFO or WARN or FATAL or ERROR or DEBUG)
| parse "* * * * * *" as date,time,severity,module,caller,msg
```

**Jira - OpenTelemetry/Jira - Catalina/Errors**
```
sumo.datasource=jira 
| parse "* * * * * *" as date,time,severity,module,caller,msg
```

**Jira - OpenTelemetry/Jira - Catalina/Exceptions Over Time**
```
sumo.datasource=jira (error or fail* or exception)
| parse "* * * * * *" as date,time,severity,module,caller,msg nodrop
```

**Jira - OpenTelemetry/Jira - Catalina/Requests Over Time**
```
sumo.datasource=jira
| parse "URI *," as URI
| parse regex "\d{2}-\w{3}-\d{4}\s\d{2}:\d{2}:\d{2}.\d{3}\s(?<log_level>\w+)\s\[(?<thread>[^\]]+)\]\s(?<component>\S+)\s(?<message>.*)"
```

**Jira - OpenTelemetry/Jira - Catalina/Top 15 URIs**
```
sumo.datasource=jira
| parse "URI *," as URI
| parse regex "\d{2}-\w{3}-\d{4}\s\d{2}:\d{2}:\d{2}.\d{3}\s(?<log_level>\w+)\s\[(?<thread>[^\]]+)\]\s(?<component>\S+)\s(?<message>.*)"
```

**Jira - OpenTelemetry/Jira - Issue Details/?Issue Summary by Event Name?**
```
sumo.datasource=jira issue
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels 
| where   project_name matches "{{project_name}}"  AND issue_key matches "{{issue_key}}" AND type matches "{{issue_type}}" AND priority matches "{{priority}}" AND status_category matches "{{status_category}}" AND status matches "{{status}}"
| json field=change_log "items" as changes
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss") as date_time
| parse regex field=jira_self "(?<base_url>[\S]+\/rest)[\S]+" nodrop
| parse regex field=jira_self "(?<base_url>[\S]+\/jira)[\S]+" nodrop
```

**Jira - OpenTelemetry/Jira - Issue Details/Avg Time Taken to close Issues by User**
```
sumo.datasource=jira *issue*  Done statusCategory issue assignee 
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
//| json field=change_log "items[0].toString" as to_String
//| json field=change_log "items[0].fromString" as from_String
//| json field=change_log "items[0].field" as fieldId
//| json field=change_log "items[0].fieldtype" as fieldType
```

**Jira - OpenTelemetry/Jira - Issue Details/Avg. Time to Close Issues by Project**
```
sumo.datasource=jira *issue*  Done statusCategory issue assignee 
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
//| json field=change_log "items[1].toString" as to_String
//| json field=change_log "items[1].fromString" as from_String
//| json field=change_log "items[1].field" as fieldId
//| json field=change_log "items[1].fieldtype" as fieldType
```

**Jira - OpenTelemetry/Jira - Issue Details/Issues Created Vs Closed**
```
sumo.datasource=jira *issue*
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| where   project_name matches "{{project_name}}"  AND issue_key matches "{{issue_key}}" AND type matches "{{issue_type}}" AND priority matches "{{priority}}" AND status_category matches "{{status_category}}" AND status matches "{{status}}"
| isNull(issue_assignee) ? "Unassigned" : issue_assignee as issue_assignee
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| where component matches "{{components}}" and  label matches "{{label}}"
| where status_category in ("To Do","Complete")
//| json field=change_log "items" as changes  
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss", "UTC") as date_time
| parse regex field=jira_self "(?<base_url>.*?//.*?)\/" 
```

**Jira - OpenTelemetry/Jira - Issue Details/Issues Escalated to the Highest Priority**
```
sumo.datasource=jira *issue*
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

**Jira - OpenTelemetry/Jira - Issue Details/Issues Reopened**
```
sumo.datasource=jira *issue*
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
| json field=change_log "items[0].toString" as to_String
| json field=change_log "items[0].fromString" as from_String
| json field=change_log "items[0].field" as fieldId
| json field=change_log "items[0].fieldtype" as fieldType
```

**Jira - OpenTelemetry/Jira - Issue Details/Issues Reopened - One Month Comparison**
```
sumo.datasource=jira *issue*
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

**Jira - OpenTelemetry/Jira - Issue Details/Time in Hours to Close Issues**
```
sumo.datasource=jira *issue*  Done statusCategory issue assignee 
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, summary, priority, components, labels  
| where   project_name matches "*" AND issue_key matches "*" AND type matches "*" AND priority matches "*" AND status_category matches "*" AND status matches "*"
| isNull(issue_assignee) ? "Unassigned" : issue_assignee as assignee
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| where component matches "*" and  label matches "*"
| where status_category="Done"
//| json field=change_log "items" as changes
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
//| json field=change_log "items[1].toString" as to_String
//| json field=change_log "items[1].fromString" as from_String
//| json field=change_log "items[1].field" as fieldId
//| json field=change_log "items[1].fieldtype" as fieldType
```

**Jira - OpenTelemetry/Jira - Issue Details/Top 10 Issue Assignee**
```
sumo.datasource=jira *issue*
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

**Jira - OpenTelemetry/Jira - Issue Details/Top 10 Issue creator**
```
sumo.datasource=jira  *issue*
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| where   project_name matches "{{project_name}}" AND issue_key matches "{{issue_key}}" AND type matches "{{issue_type}}" AND priority matches "{{priority}}" AND status_category matches "{{status_category}}" AND status matches "{{status}}"
| isNull(issue_assignee) ? "Unassigned" : issue_assignee as issue_assignee
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| where component matches "{{components}}" and  label matches "{{label}}"
| where status_category="To Do"
//| json field=change_log "items" as changes
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss", "UTC") as date_time
| parse regex field=jira_self "(?<base_url>.*?//.*?)\/" 
```

**Jira - OpenTelemetry/Jira - Issue Details/Unassigned Issues**
```
sumo.datasource=jira *issue* 
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

**Jira - OpenTelemetry/Jira - Issue Overview/Issues by Component**
```
sumo.datasource=jira *issue*
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

**Jira - OpenTelemetry/Jira - Issue Overview/Issues by Priority and Project**
```
sumo.datasource=jira *issue*
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

**Jira - OpenTelemetry/Jira - Issue Overview/Issues by Project**
```
sumo.datasource=jira  *issue*
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

**Jira - OpenTelemetry/Jira - Issue Overview/Issues by Type**
```
sumo.datasource=jira  *issue*
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

**Jira - OpenTelemetry/Jira - Issue Overview/Issues by Type Over Time**
```
sumo.datasource=jira  issue_*
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

**Jira - OpenTelemetry/Jira - Issue Overview/Issues Closed**
```
sumo.datasource=jira *issue*
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

**Jira - OpenTelemetry/Jira - Issue Overview/Issues Closed by assignee**
```
sumo.datasource=jira *issue*
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

**Jira - OpenTelemetry/Jira - Issue Overview/Issues Closed by Priority**
```
sumo.datasource=jira *issue*
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

**Jira - OpenTelemetry/Jira - Issue Overview/Issues Closed by Project**
```
sumo.datasource=jira *issue*
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

**Jira - OpenTelemetry/Jira - Issue Overview/Issues Created**
```
sumo.datasource=jira *issue*
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

**Jira - OpenTelemetry/Jira - Issue Overview/Issues In Progress**
```
sumo.datasource=jira *issue*
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

**Jira - OpenTelemetry/Jira - Issue Overview/Issues In Progress by assignee**
```
sumo.datasource=jira *issue*
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

**Jira - OpenTelemetry/Jira - Issue Overview/Issues In Progress by Priority**
```
sumo.datasource=jira *issue*
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

**Jira - OpenTelemetry/Jira - Issue Overview/Issues In Progress by Project**
```
sumo.datasource=jira *issue*
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

**Jira - OpenTelemetry/Jira - Issue Overview/Issues Reopened**
```
sumo.datasource=jira *issue*
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

**Jira - OpenTelemetry/Jira - Issue Overview/Issues Reopened by assignee**
```
sumo.datasource=jira *issue*
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

**Jira - OpenTelemetry/Jira - Issue Overview/Issues Reopened by Priority**
```
sumo.datasource=jira *issue*
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

**Jira - OpenTelemetry/Jira - Issue Overview/Issues Reopened by Project**
```
sumo.datasource=jira *issue*
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

**Jira - OpenTelemetry/Jira - Overview/Bytes Sent (MB)**
```
sumo.datasource=jira
| parse regex "^(?<src_ip>[^\s]*) (?<jira_request_id>[^\s]*) (?<jira_username>[^\s]*) (?:[^\s]*\s){2}\"(?<method>[^\s]*) (?<uri>[^\s]*) (?<protocol>[^\"]*)\" (?<response_code>[^\s]*) (?<bytes>[^\s]*) \"(?<referrer>[^\"]*)\" \"(?<user_agent>[^\"]*)\"" nodrop
| parse regex "^(?<src_ip>[^\s]*) (?<jira_request_id>[^\s]*) (?<jira_username>[^\s]*) (?:[^\s]*\s){2}\"(?<method>[^\s]*) (?<uri>[^\s]*) (?<protocol>[^\"]*)\" (?<response_code>[^\s]*) (?<bytes>[^\s]*) (?<response_time>[^\s]*) \"(?<referrer>[^\"]*)\" \"(?<user_agent>[^\"]*)\" \"(?<jira_session_id>[^\"]*)\""  nodrop
| parse regex field=uri "/browse/(?<project>[^-]*)-(?<issue>\d+)" nodrop
```

**Jira - OpenTelemetry/Jira - Overview/Catalina Requests**
```
sumo.datasource=jira
| parse "URI *," as URI
| parse regex "\d{2}-\w{3}-\d{4}\s\d{2}:\d{2}:\d{2}.\d{3}\s(?<log_level>\w+)\s\[(?<thread>[^\]]+)\]\s(?<component>\S+)\s(?<message>.*)"
```

**Jira - OpenTelemetry/Jira - Overview/Error Over Time with One Day Time Comparison**
```
sumo.datasource=jira  (error or excepttion)
| parse "[*] [*] *" as date_time,severity,msg 
```

**Jira - OpenTelemetry/Jira - Overview/Errors - One Day Time Comparison**
```
sumo.datasource=jira 
| parse "* * * * * *" as date,time,severity,module,caller,msg
```

**Jira - OpenTelemetry/Jira - Overview/Logins - One Day Time Comparison**
```
sumo.datasource=jira
| parse regex "The user '(?<user>[\S]+)' has (?<result>PASSED|FAILED) authentication" 
```

**Jira - OpenTelemetry/Jira - Recent Issue Changes/Recent Issue Changes Over Time**
```
sumo.datasource=jira *issue*
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

**Jira - OpenTelemetry/Jira - Security/Failed Logins**
```
sumo.datasource=jira
| parse "The user '*' has * authentication." as user,result
```

**Jira - OpenTelemetry/Jira - Security/Failed Logins - One Day Time Comparison**
```
sumo.datasource=jira 
| parse regex "The user '(?<user>[\S]+)' has (?<result>PASSED|FAILED) authentication" 
```

**Jira - OpenTelemetry/Jira - Security/Security Messages**
```
sumo.datasource=jira !(created or destroyed or PASSED or FAILED )
| parse "* * * *" as date_time,nodule,user,msg 
```

**Jira - OpenTelemetry/Jira - Security/Successful Logins - One Day Time Comparison**
```
sumo.datasource=jira 
| parse regex "The user '(?<user>[\S]+)' has (?<result>PASSED|FAILED) authentication" 
```

**Jira - OpenTelemetry/Jira - Security/Successful Logins By User**
```
sumo.datasource=jira
| parse "The user '*' has * authentication." as user,authentication
```

**Jira - OpenTelemetry/Jira - Security/Top 10 Active Users with Failed Logins**
```
sumo.datasource=jira  FAILED
| parse regex "The user '(?<user>[\S]+)' has (?<result>PASSED|FAILED) authentication" 
```

**Jira - OpenTelemetry/Jira - Security/Top 10 Active Users with Successful Logins**
```
sumo.datasource=jira  PASSED
| parse regex "The user '(?<user>[\S]+)' has (?<result>PASSED|FAILED) authentication" 
```

**Jira - OpenTelemetry/Jira - Sprints Events/Events**
```
sumo.datasource=jira (sprint_started or sprint_closed or sprint_created or sprint_deleted or sprint_updated)
| json field=_raw "webhookEvent" as event_name
```

**Jira - OpenTelemetry/Jira - Sprints Events/Sprint Closed**
```
sumo.datasource=jira (sprint_started or sprint_closed or sprint_created or sprint_deleted or sprint_updated)
| json field=_raw "webhookEvent", "sprint.name", "sprint.state", "sprint.startDate", "sprint.endDate", "sprint.goal", "sprint.originBoardId", "sprint.completeDate" as event_name, sprint_name, sprint_state, sprint_startDate, sprint_endDate, sprint_goal, sprinit_originBoardID, sprint_completeDate nodrop
```

**Jira - OpenTelemetry/Jira - Sprints Events/Sprint Created**
```
sumo.datasource=jira (sprint_started or sprint_closed or sprint_created or sprint_deleted or sprint_updated)
| json field=_raw "webhookEvent", "sprint.name", "sprint.state", "sprint.originBoardId" as event_name, sprint_name, sprint_state, sprinit_originBoardID nodrop
```

**Jira - OpenTelemetry/Jira - Sprints Events/Sprint Events - One Week Comparison**
```
sumo.datasource=jira (sprint_started or sprint_closed or sprint_created or sprint_deleted or sprint_updated)
| json field=_raw "webhookEvent", "sprint.name", "sprint.state", "sprint.startDate", "sprint.endDate", "sprint.goal", "sprint.originBoardId" as event_name, sprint_name, sprint_state, sprint_startDate, sprint_endDate, sprint_goal, sprinit_originBoardID nodrop
```

**Jira - OpenTelemetry/Jira - Sprints Events/Sprint Started**
```
sumo.datasource=jira (sprint_started or sprint_closed or sprint_created or sprint_deleted or sprint_updated)
| json field=_raw "webhookEvent", "sprint.name", "sprint.state", "sprint.startDate", "sprint.endDate", "sprint.goal", "sprint.originBoardId" as event_name, sprint_name, sprint_state, sprint_startDate, sprint_endDate, sprint_goal, sprinit_originBoardID nodrop
```

**Jira - OpenTelemetry/Jira - User Events/User Events**
```
sumo.datasource=jira user_*
| json field=_raw "webhookEvent" as event_type
```

**Jira - OpenTelemetry/Jira - User Events/User Events - One Week Comparison**
```
sumo.datasource=jira user_*
| json field=_raw "webhookEvent" as event_type
| where event_type matches "user_*"
| json  "timestamp"  as timestamp
```

**Jira - OpenTelemetry/Jira - User Events/Users Created**
```
sumo.datasource=jira user_created
| json field=_raw "webhookEvent" as event_type
| where event_type = "user_created"
| json  "user.key", "user.displayName", "user.emailAddress", "user.self"  as account_id, user_name, user_email, url
```

**Jira - OpenTelemetry/Jira - User Events/Users Deleted**
```
sumo.datasource=jira user_deleted
| json field=_raw "webhookEvent" as event_type
| where event_type = "user_deleted"
| json  "user.key", "user.name" as account_id, user_name
```

**Jira - OpenTelemetry/Jira - User Events/Users Updated**
```
sumo.datasource=jira user_updated
| json field=_raw "webhookEvent" as event_type
| where event_type = "user_updated"
| json  "user.key", "user.displayName", "user.emailAddress", "user.self"  as account_id, user_name, user_email, url
```


