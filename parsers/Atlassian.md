# Parsers For Atlassian

**Atlassian/Overview/Alerts Over Time**
```
_sourceCategory = Labs/Opsgenie_alerts 
| json  "action" 
```

**Atlassian/Overview/Builds Over Time**
```
_sourceCategory = Labs/bitbucket %"x-event-key"=repo:commit_status_* ("SUCCESSFUL" OR "FAILED")
| json "commit_status.state", "commit_status.commit.message", "commit_status.name", "commit_status.type", "actor.display_name", "repository.full_name",  "commit_status.refname",  "commit_status.commit.links.html.href", "commit_status.url", "commit_status.created_on" as build_state, build_commit_message, commit_name, type, commit_user, repo_name, commit_branch, commit_link, build_status_link, date_time
```

**Atlassian/Overview/Commits Over Time**
```
_sourceCategory = Labs/bitbucket %"x-event-key"="repo:push"
| json "push.changes[0].closed", "push.changes[0].created", "push.changes[0].commits[0].links.html.href", "push.changes[0].commits[0].author.user.display_name", "push.changes[0].commits[0].summary.raw", "push.changes[0].commits[0].message", "push.changes[0].commits[0].type" , "repository.links.html.href", "repository.full_name", "push.changes[0].commits[0].date"  as closed, created, commit_link ,user_name, summary, message,commit_type,repo_link, repo_name, commits_date
| where created="true"
| json "push.changes[0].new.name" as branch_name nodrop
| parse regex field=commits_date "(?<commits_date>\d\d\d\d-\d\d-\d\dT\d\d:\d\d:\d\d)"   
```

**Atlassian/Overview/Created Vs. Closed Issues**
```
_sourceCategory = Labs/jira-cloud *issue* (Complete or New)
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| isNull(issue_assignee) ? "Unassigned" : issue_assignee as issue_assignee
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| where status_category in ("New","Complete","To Do","Done")
| json field=change_log "items" as changes  
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss", "UTC") as date_time
| parse regex field=jira_self "https:\/\/(?<base_url>.*?)\/" 
```

**Atlassian/Overview/Failed Builds**
```
_sourceCategory = Labs/bitbucket %"x-event-key"=repo:commit_status_* display_name full_name !INPROGRESS !STOPPED
| json "commit_status.state", "commit_status.commit.message", "commit_status.name", "commit_status.type", "actor.display_name", "repository.full_name",  "commit_status.refname",  "commit_status.commit.links.html.href", "commit_status.url", "commit_status.created_on" as build_state, build_commit_message, commit_name, type, commit_user, repo, commit_branch, commit_link, build_status_link, date_time
| where build_state in ("FAILED")
| parse regex field=date_time "(?<date_time>\d\d\d\d-\d\d-\d\dT\d\d:\d\d:\d\d)"
| parse regex field=build_commit_message "(?<commit_msg_short>.+)"
```

**Atlassian/Overview/Open Issues by Component**
```
_sourceCategory = Labs/jira-cloud *issue*
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| isNull(issue_assignee) ? "Unassigned" : issue_assignee as issue_assignee
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| json field=change_log "items" as changes
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss", "UTC") as date_time
| parse regex field=jira_self "https:\/\/(?<base_url>.*?)\/" 
```

**Atlassian/Overview/P1 Alerts**
```
_sourceCategory = Labs/Opsgenie_alerts 
| json "alert.createdAt", "alert.updatedAt" , "alert.description", "alert.message", "action", "alert.username",  "alert.priority", "alert.source" , "alert.tags[*]","alert.recipients[*]", "alert.details" as created_at, updated_at, description, message, action, username, priority, source, tags, recipients, alert_details nodrop
```

**Atlassian/Overview/Pull Requests Over Time**
```
_sourceCategory = Labs/bitbucket %"x-event-key"=pullrequest* 
| json "pullrequest.id", "pullrequest.title", "pullrequest.description", "pullrequest.reviewers[*].display_name", "pullrequest.destination.repository.full_name", "pullrequest.destination.branch.name", "pullrequest.created_on", "pullrequest.source.branch.name", "pullrequest.author.display_name", "pullrequest.participants[*].user.display_name", "pullrequest.state", "pullrequest.comment_count", "pullrequest.links.html.href" as id, title, description, reviewers, repo_name, dest_branch_name, create_time, source_branch_name, author, participants, state, comment_count, PR_link 
```

**Atlassian/Software Delivery Performance/Average Change Failure Rate - Trend**
```
_sourceCategory = Labs/Opsgenie_alerts OR (_sourceCategory = Labs/bitbucket production  deploymentEnvironment pipe_result_link deploy_status commit_link)
| json "alert.createdAt", "alert.updatedAt", "alert.description", "alert.message", "action", "alert.team",  "alert.priority", "alert.source" , "alert.tags[*]","alert.recipients[*]" as created_at, updated_at, description, message, action, team, priority, source, tags, recipients nodrop // alerts
| json field=_raw "buildNumber", "deploymentEnvironment", "branch", "repoFullName", "pipe_result_link", "deploy_status", "pr_id", "commit", "tag", "projectKey", "repoOwner", "commit_link", "event_date"  nodrop  // deploys
```

**Atlassian/Software Delivery Performance/Average Deploys per week**
```
_sourceCategory = Labs/bitbucket production  deploymentEnvironment pipe_result_link deploy_status commit_link 
| json field=_raw "buildNumber", "deploymentEnvironment", "branch", "repoFullName", "pipe_result_link", "deploy_status", "pr_id", "commit", "tag", "projectKey", "repoOwner", "commit_link", "event_date" 
```

**Atlassian/Software Delivery Performance/Average Lead Time**
```
_sourceCategory = Labs/bitbucket 
//BB Commit Event
| join
 (json "push.changes[0].created",  "push.changes[0].commits[0].date",  "push.changes[0].commits[0].hash"  as  created, bitbucket_commits_date, bitbucket_commit | where %"x-event-key" = "repo:push" ) as bb_commit,

( json field=_raw "buildNumber", "deploymentEnvironment", "branch", "repoFullName", "pipe_result_link", "deploy_status", "pr_id", "commit", "tag", "projectKey", "repoOwner", "commit_link", "event_date" as buildNumber,deploymentEnvironment, deploy_branch, repo_name, pipe_result_link, deploy_status, pr_id, deploy_commit, tag, projectKey, repoOwner,  commit_link, deployevent_date ) as deploy_event
on bb_commit.bitbucket_commit = deploy_event.deploy_commit
| parse regex field= bb_commit_bitbucket_commits_date "(?<commits_date>\d\d\d\d-\d\d-\d\dT\d\d:\d\d:\d\d)"  nodrop   
| parseDate(commits_date, "yyyy-MM-dd'T'HH:mm:ss") as commit_date_milliseconds

| where deploy_event_deploymentEnvironment="production" and deploy_event_deploy_status="0"
| parse regex field=deploy_event_deployevent_date "(?<d>[\S]+) (?<t>[\S]+)"
```

**Atlassian/Software Delivery Performance/Average Time to Restore Service**
```
_sourceCategory = Labs/Opsgenie_alerts Close p1
| json "alert.createdAt", "alert.updatedAt", "alert.description", "alert.message", "action", "alert.team",  "alert.priority", "alert.source" , "alert.tags[*]","alert.recipients[*]" as created_at, updated_at, description, message, action, team, priority, source, tags, recipients nodrop
```

**Atlassian/Software Delivery Performance/Change Failure Rate**
```
_sourceCategory = Labs/Opsgenie_alerts OR (_sourceCategory = Labs/bitbucket production  deploymentEnvironment pipe_result_link deploy_status commit_link)
| json "alert.createdAt", "alert.updatedAt", "alert.description", "alert.message", "action", "alert.team",  "alert.priority", "alert.source" , "alert.tags[*]","alert.recipients[*]" as created_at, updated_at, description, message, action, team, priority, source, tags, recipients nodrop // alerts
| json field=_raw "buildNumber", "deploymentEnvironment", "branch", "repoFullName", "pipe_result_link", "deploy_status", "pr_id", "commit", "tag", "projectKey", "repoOwner", "commit_link", "event_date"  nodrop  // deploys
```

**Atlassian/Software Delivery Performance/Daily Average lead time Trend**
```
_sourceCategory = Labs/bitbucket 
//BB Commit Event
| join
 (json "push.changes[0].created",  "push.changes[0].commits[0].date",  "push.changes[0].commits[0].hash"  as  created, bitbucket_commits_date, bitbucket_commit | where %"x-event-key" = "repo:push" ) as bb_commit,

( json field=_raw "buildNumber", "deploymentEnvironment", "branch", "repoFullName", "pipe_result_link", "deploy_status", "pr_id", "commit", "tag", "projectKey", "repoOwner", "commit_link", "event_date" as buildNumber,deploymentEnvironment, deploy_branch, repo_name, pipe_result_link, deploy_status, pr_id, deploy_commit, tag, projectKey, repoOwner,  commit_link, deployevent_date ) as deploy_event
on bb_commit.bitbucket_commit = deploy_event.deploy_commit
| parse regex field= bb_commit_bitbucket_commits_date "(?<commits_date>\d\d\d\d-\d\d-\d\dT\d\d:\d\d:\d\d)"  nodrop   
| parseDate(commits_date, "yyyy-MM-dd'T'HH:mm:ss") as commit_date_milliseconds

| where deploy_event_deploymentEnvironment="production" and deploy_event_deploy_status="0"
| parse regex field=deploy_event_deployevent_date "(?<d>[\S]+) (?<t>[\S]+)"
```

**Atlassian/Software Delivery Performance/Daily Avg. Time to Restore Service Trends**
```
_sourceCategory = Labs/Opsgenie_alerts Close p1
| json "alert.createdAt", "alert.updatedAt", "alert.description", "alert.message", "action", "alert.team",  "alert.priority", "alert.source" , "alert.tags[*]","alert.recipients[*]" as created_at, updated_at, description, message, action, team, priority, source, tags, recipients nodrop
```

**Atlassian/Software Delivery Performance/Deploys by Repository**
```
_sourceCategory = Labs/bitbucket production  deploymentEnvironment pipe_result_link deploy_status commit_link 
| json field=_raw "buildNumber", "deploymentEnvironment", "branch", "repoFullName", "pipe_result_link", "deploy_status", "pr_id", "commit", "tag", "projectKey", "repoOwner", "commit_link", "event_date" 
```

**Atlassian/Software Delivery Performance/Deploys Over Time**
```
_sourceCategory = Labs/bitbucket production  deploymentEnvironment pipe_result_link deploy_status commit_link 
| json field=_raw "buildNumber", "deploymentEnvironment", "branch", "repoFullName", "pipe_result_link", "deploy_status", "pr_id", "commit", "tag", "projectKey", "repoOwner", "commit_link", "event_date" 
```

**Atlassian/Software Delivery Performance/Repos with Slowest Lead Times  (in Hours)**
```
_sourceCategory = Labs/bitbucket 
//BB Commit Event
| join
 (json "push.changes[0].created",  "push.changes[0].commits[0].date",  "push.changes[0].commits[0].hash"  as  created, bitbucket_commits_date, bitbucket_commit | where %"x-event-key" = "repo:push" ) as bb_commit,

( json field=_raw "buildNumber", "deploymentEnvironment", "branch", "repoFullName", "pipe_result_link", "deploy_status", "pr_id", "commit", "tag", "projectKey", "repoOwner", "commit_link", "event_date" as buildNumber,deploymentEnvironment, deploy_branch, repo_name, pipe_result_link, deploy_status, pr_id, deploy_commit, tag, projectKey, repoOwner,  commit_link, deployevent_date ) as deploy_event
on bb_commit.bitbucket_commit = deploy_event.deploy_commit
| parse regex field= bb_commit_bitbucket_commits_date "(?<commits_date>\d\d\d\d-\d\d-\d\dT\d\d:\d\d:\d\d)"  nodrop   
| parseDate(commits_date, "yyyy-MM-dd'T'HH:mm:ss") as commit_date_milliseconds

| where deploy_event_deploymentEnvironment="production" and deploy_event_deploy_status="0"
| parse regex field=deploy_event_deployevent_date "(?<d>[\S]+) (?<t>[\S]+)"
```

**Atlassian/Software Delivery Performance/Services with Slowest Time (In Hours) to Restore**
```
_sourceCategory = Labs/Opsgenie_alerts Close p1
| json "alert.createdAt", "alert.updatedAt", "alert.description", "alert.message", "action", "alert.team",  "alert.priority", "alert.source" , "alert.tags[*]","alert.recipients[*]" as created_at, updated_at, description, message, action, team, priority, source, tags, recipients nodrop
```

**Atlassian/Software Delivery Performance/Top Services by P1 Incidents**
```
_sourceCategory = Labs/Opsgenie_alerts Close p1
| json "alert.alertId", "alert.createdAt", "alert.updatedAt", "alert.description", "alert.message", "action", "alert.team",  "alert.priority", "alert.source" , "alert.tags[*]","alert.recipients[*]" as alertId, created_at, updated_at, description, message, action, team, priority, service, tags, recipients nodrop
```


