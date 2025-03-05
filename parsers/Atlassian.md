# Parsers For Atlassian

## Parser:
```
| json  "action" 
 
```
### Use Cases:
Alerts Over Time, Builds Over Time, Commits Over Time, Created Vs. Closed Issues, Failed Builds, Open Issues by Component, Pull Requests Over Time



## Parser:
```
| json "alert.alertId", "alert.createdAt", "alert.updatedAt", "alert.description", "alert.message", "action", "alert.team",  "alert.priority", "alert.source" , "alert.tags[*]","alert.recipients[*]" as alertId, created_at, updated_at, description, message, action, team, priority, service, tags, recipients nodrop
 
```
### Use Cases:
Alerts Over Time, Average Change Failure Rate - Trend, Average Deploys per week, Average Lead Time, Average Time to Restore Service, Builds Over Time, Change Failure Rate, Commits Over Time, Created Vs. Closed Issues, Daily Average lead time Trend, Daily Avg. Time to Restore Service Trends, Deploys by Repository, Deploys Over Time, Failed Builds, Open Issues by Component, P1 Alerts, Pull Requests Over Time, Repos with Slowest Lead Times  (in Hours), Services with Slowest Time (In Hours) to Restore, Top Services by P1 Incidents



## Parser:
```
| json "alert.createdAt", "alert.updatedAt" , "alert.description", "alert.message", "action", "alert.username",  "alert.priority", "alert.source" , "alert.tags[*]","alert.recipients[*]", "alert.details" as created_at, updated_at, description, message, action, username, priority, source, tags, recipients, alert_details nodrop
 
```
### Use Cases:
Alerts Over Time, Builds Over Time, Commits Over Time, Created Vs. Closed Issues, Failed Builds, Open Issues by Component, P1 Alerts, Pull Requests Over Time



## Parser:
```
| json "alert.createdAt", "alert.updatedAt", "alert.description", "alert.message", "action", "alert.team",  "alert.priority", "alert.source" , "alert.tags[*]","alert.recipients[*]" as created_at, updated_at, description, message, action, team, priority, source, tags, recipients nodrop
 
```
### Use Cases:
Alerts Over Time, Average Change Failure Rate - Trend, Average Deploys per week, Average Lead Time, Average Time to Restore Service, Builds Over Time, Change Failure Rate, Commits Over Time, Created Vs. Closed Issues, Daily Average lead time Trend, Daily Avg. Time to Restore Service Trends, Deploys by Repository, Deploys Over Time, Failed Builds, Open Issues by Component, P1 Alerts, Pull Requests Over Time, Repos with Slowest Lead Times  (in Hours), Services with Slowest Time (In Hours) to Restore



## Parser:
```
| json "alert.createdAt", "alert.updatedAt", "alert.description", "alert.message", "action", "alert.team",  "alert.priority", "alert.source" , "alert.tags[*]","alert.recipients[*]" as created_at, updated_at, description, message, action, team, priority, source, tags, recipients nodrop // alerts
| json field=_raw "buildNumber", "deploymentEnvironment", "branch", "repoFullName", "pipe_result_link", "deploy_status", "pr_id", "commit", "tag", "projectKey", "repoOwner", "commit_link", "event_date"  nodrop  // deploys
 
```
### Use Cases:
Alerts Over Time, Average Change Failure Rate - Trend, Average Deploys per week, Average Lead Time, Builds Over Time, Change Failure Rate, Commits Over Time, Created Vs. Closed Issues, Daily Average lead time Trend, Daily Avg. Time to Restore Service Trends, Deploys by Repository, Deploys Over Time, Failed Builds, Open Issues by Component, P1 Alerts, Pull Requests Over Time, Repos with Slowest Lead Times  (in Hours), Services with Slowest Time (In Hours) to Restore



## Parser:
```
| json "commit_status.state", "commit_status.commit.message", "commit_status.name", "commit_status.type", "actor.display_name", "repository.full_name",  "commit_status.refname",  "commit_status.commit.links.html.href", "commit_status.url", "commit_status.created_on" as build_state, build_commit_message, commit_name, type, commit_user, repo_name, commit_branch, commit_link, build_status_link, date_time
 
```
### Use Cases:
Builds Over Time, Created Vs. Closed Issues, Open Issues by Component



## Parser:
```
| json "commit_status.state", "commit_status.commit.message", "commit_status.name", "commit_status.type", "actor.display_name", "repository.full_name",  "commit_status.refname",  "commit_status.commit.links.html.href", "commit_status.url", "commit_status.created_on" as build_state, build_commit_message, commit_name, type, commit_user, repo, commit_branch, commit_link, build_status_link, date_time
| parse regex field=date_time "(?<date_time>\d\d\d\d-\d\d-\d\dT\d\d:\d\d:\d\d)"
| parse regex field=build_commit_message "(?<commit_msg_short>.+)"
 
```
### Use Cases:
Builds Over Time, Created Vs. Closed Issues, Failed Builds, Open Issues by Component



## Parser:
```
| json "pullrequest.id", "pullrequest.title", "pullrequest.description", "pullrequest.reviewers[*].display_name", "pullrequest.destination.repository.full_name", "pullrequest.destination.branch.name", "pullrequest.created_on", "pullrequest.source.branch.name", "pullrequest.author.display_name", "pullrequest.participants[*].user.display_name", "pullrequest.state", "pullrequest.comment_count", "pullrequest.links.html.href" as id, title, description, reviewers, repo_name, dest_branch_name, create_time, source_branch_name, author, participants, state, comment_count, PR_link 
 
```
### Use Cases:
Builds Over Time, Commits Over Time, Created Vs. Closed Issues, Failed Builds, Open Issues by Component, Pull Requests Over Time



## Parser:
```
| json "push.changes[0].closed", "push.changes[0].created", "push.changes[0].commits[0].links.html.href", "push.changes[0].commits[0].author.user.display_name", "push.changes[0].commits[0].summary.raw", "push.changes[0].commits[0].message", "push.changes[0].commits[0].type" , "repository.links.html.href", "repository.full_name", "push.changes[0].commits[0].date"  as closed, created, commit_link ,user_name, summary, message,commit_type,repo_link, repo_name, commits_date
| json "push.changes[0].new.name" as branch_name nodrop
| parse regex field=commits_date "(?<commits_date>\d\d\d\d-\d\d-\d\dT\d\d:\d\d:\d\d)"   
 
```
### Use Cases:
Builds Over Time, Commits Over Time, Created Vs. Closed Issues, Failed Builds, Open Issues by Component



## Parser:
```
| json field=_raw "buildNumber", "deploymentEnvironment", "branch", "repoFullName", "pipe_result_link", "deploy_status", "pr_id", "commit", "tag", "projectKey", "repoOwner", "commit_link", "event_date" 
 
```
### Use Cases:
Alerts Over Time, Average Deploys per week, Average Lead Time, Builds Over Time, Commits Over Time, Created Vs. Closed Issues, Daily Average lead time Trend, Deploys by Repository, Deploys Over Time, Failed Builds, Open Issues by Component, P1 Alerts, Pull Requests Over Time, Repos with Slowest Lead Times  (in Hours)



## Parser:
```
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| json field=change_log "items" as changes
| parse regex field=jira_self "https:\/\/(?<base_url>.*?)\/" 
 
```
### Use Cases:
Created Vs. Closed Issues, Open Issues by Component



## Parser:
```
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| json field=change_log "items" as changes  
| parse regex field=jira_self "https:\/\/(?<base_url>.*?)\/" 
 
```
### Use Cases:
Created Vs. Closed Issues



## Parser:
```
| parse regex field= bb_commit_bitbucket_commits_date "(?<commits_date>\d\d\d\d-\d\d-\d\dT\d\d:\d\d:\d\d)"  nodrop   
| parse regex field=deploy_event_deployevent_date "(?<d>[\S]+) (?<t>[\S]+)"
 
```
### Use Cases:
Alerts Over Time, Average Lead Time, Builds Over Time, Commits Over Time, Created Vs. Closed Issues, Daily Average lead time Trend, Failed Builds, Open Issues by Component, P1 Alerts, Pull Requests Over Time, Repos with Slowest Lead Times  (in Hours)


