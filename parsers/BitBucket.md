# Parsers For BitBucket

**BitBucket/Bitbucket  - Deployments/Deployment (s)**
```
_sourceCategory = Labs/bitbucket staging  deploymentEnvironment pipe_result_link deploy_status commit_link 
| json field=_raw "buildNumber", "deploymentEnvironment", "branch", "repoFullName", "pipe_result_link", "deploy_status", "pr_id", "commit", "tag", "projectKey", "repoOwner", "commit_link", "event_date" 
```

**BitBucket/Bitbucket  - Deployments/Deployment(s)**
```
_sourceCategory = Labs/bitbucket test deploymentEnvironment pipe_result_link deploy_status commit_link 
| json field=_raw "buildNumber", "deploymentEnvironment", "branch", "repoFullName", "pipe_result_link", "deploy_status", "pr_id", "commit", "tag", "projectKey", "repoOwner", "commit_link", "event_date"  
```

**BitBucket/Bitbucket  - Deployments/Failed Deployment(s)**
```
_sourceCategory = Labs/bitbucket production  deploymentEnvironment pipe_result_link deploy_status commit_link 
| json field=_raw "buildNumber", "deploymentEnvironment", "branch", "repoFullName", "pipe_result_link", "deploy_status", "pr_id", "commit", "tag", "projectKey", "repoOwner", "commit_link" , "event_date" 
```

**BitBucket/Bitbucket  - Deployments/‎Failed Deployment(s)‎**
```
_sourceCategory = Labs/bitbucket staging  deploymentEnvironment pipe_result_link deploy_status commit_link 
| json field=_raw "buildNumber", "deploymentEnvironment", "branch", "repoFullName", "pipe_result_link", "deploy_status", "pr_id", "commit", "tag", "projectKey", "repoOwner", "commit_link", "event_date" 
```

**BitBucket/Bitbucket  - Deployments/‎‎Failed Deployment(s)‎‎**
```
_sourceCategory = Labs/bitbucket test  deploymentEnvironment pipe_result_link deploy_status commit_link 
| json field=_raw "buildNumber", "deploymentEnvironment", "branch", "repoFullName", "pipe_result_link", "deploy_status", "pr_id", "commit", "tag", "projectKey", "repoOwner", "commit_link", "event_date"  
```

**BitBucket/Bitbucket  - Deployments/One Day Comparison**
```
_sourceCategory = Labs/bitbucket production  deploymentEnvironment pipe_result_link deploy_status commit_link 
| json field=_raw "buildNumber", "deploymentEnvironment", "branch", "repoFullName", "pipe_result_link", "deploy_status", "pr_id", "commit", "tag", "projectKey", "repoOwner", "commit_link" 
```

**BitBucket/Bitbucket  - Deployments/‎‎Success Deployment(s)‎‎**
```
_sourceCategory = Labs/bitbucket staging  deploymentEnvironment pipe_result_link deploy_status commit_link 
| json field=_raw "buildNumber", "deploymentEnvironment", "branch", "repoFullName", "pipe_result_link", "deploy_status", "pr_id", "commit", "tag", "projectKey", "repoOwner", "commit_link", "event_date"  
```

**BitBucket/Bitbucket  - Deployments/‎Success Deployment(s)‎**
```
_sourceCategory = Labs/bitbucket production  deploymentEnvironment pipe_result_link deploy_status commit_link 
| json field=_raw "buildNumber", "deploymentEnvironment", "branch", "repoFullName", "pipe_result_link", "deploy_status", "pr_id", "commit", "tag", "projectKey", "repoOwner", "commit_link", "event_date"  
```

**BitBucket/Bitbucket  - Deployments/‎‎‎Success Deployment(s)‎‎‎**
```
_sourceCategory = Labs/bitbucket test  deploymentEnvironment pipe_result_link deploy_status commit_link 
| json field=_raw "buildNumber", "deploymentEnvironment", "branch", "repoFullName", "pipe_result_link", "deploy_status", "pr_id", "commit", "tag", "projectKey", "repoOwner", "commit_link", "event_date" 
```

**BitBucket/Bitbucket  - Deployments/Successful Deploy trends**
```
_sourceCategory = Labs/bitbucket   deploymentEnvironment pipe_result_link deploy_status commit_link 
| json field=_raw "buildNumber", "deploymentEnvironment", "branch", "repoFullName", "pipe_result_link", "deploy_status", "pr_id", "commit", "tag", "projectKey", "repoOwner", "commit_link", "event_date" 
```

**BitBucket/Bitbucket - Builds/Build States by Repository**
```
_sourceCategory = Labs/bitbucket %"x-event-key"=repo:commit_status_* display_name full_name !INPROGRESS !STOPPED
| json "commit_status.state", "commit_status.commit.message", "commit_status.name", "commit_status.type", "actor.display_name", "repository.full_name",  "commit_status.refname",  "commit_status.commit.links.html.href", "commit_status.url", "commit_status.created_on" as build_state, build_commit_message, commit_name, type, commit_user, repo_name, commit_branch, commit_link, build_status_link, date_time
| where repo_name matches "{{repo_name}}"  AND commit_user matches "{{commit_user}}"
| where build_state in ("SUCCESSFUL", "FAILED")
| parse regex field=date_time "(?<date_time>\d\d\d\d-\d\d-\d\dT\d\d:\d\d:\d\d)"
| parse regex field=build_commit_message "(?<commit_msg_short>.+)"
```

**BitBucket/Bitbucket - Builds/Builds Over Time**
```
_sourceCategory = Labs/bitbucket %"x-event-key"=repo:commit_status_* ("SUCCESSFUL" OR "FAILED")
| json "commit_status.state", "commit_status.commit.message", "commit_status.name", "commit_status.type", "actor.display_name", "repository.full_name",  "commit_status.refname",  "commit_status.commit.links.html.href", "commit_status.url", "commit_status.created_on" as build_state, build_commit_message, commit_name, type, commit_user, repo_name, commit_branch, commit_link, build_status_link, date_time
```

**BitBucket/Bitbucket - Builds/Failed Builds**
```
_sourceCategory = Labs/bitbucket %"x-event-key"=repo:commit_status_* FAILED
| json "commit_status.state", "commit_status.commit.message", "commit_status.name", "commit_status.type", "actor.display_name", "repository.full_name",  "commit_status.refname",  "commit_status.commit.links.html.href", "commit_status.url", "commit_status.created_on" as build_state, build_commit_message, commit_name, type, commit_user, repo_name, commit_branch, commit_link, build_status_link, date_time
```

**BitBucket/Bitbucket - Builds/Successful Builds**
```
_sourceCategory = Labs/bitbucket %"x-event-key"=repo:commit_status_* SUCCESSFUL
| json "commit_status.state", "commit_status.commit.message", "commit_status.name", "commit_status.type", "actor.display_name", "repository.full_name",  "commit_status.refname",  "commit_status.commit.links.html.href", "commit_status.url", "commit_status.created_on" as build_state, build_commit_message, commit_name, type, commit_user, repo_name, commit_branch, commit_link, build_status_link, date_time
```

**BitBucket/Bitbucket - Issues/Issue Summary**
```
_sourceCategory = Labs/bitbucket  %"x-event-key"="issue:created"
| json field=_raw "repository.full_name", "repository.links.html.href" , "actor.nickname", "issue.priority", "issue.kind", "issue.links.html.href", "issue.title", "issue.content.raw", "issue.assignee.nickname", "issue.state", "issue.created_on", "issue.type", "issue.id" as repo_name, repo_link, issue_creator, issue_priority, issue_kind, issue_link, issue_title, issue_content, issue_assignee, issue_state, issue_created_on, issue_type, issue_id nodrop
```

**BitBucket/Bitbucket - Issues/Issues**
```
_sourceCategory = Labs/bitbucket ( %"x-event-key"="issue:updated" or  %"x-event-key"="issue:created")
| json field=_raw "repository.full_name", "repository.links.html.href" , "actor.nickname", "issue.priority", "issue.kind", "issue.links.html.href", "issue.title", "issue.content.raw", "issue.assignee.nickname", "issue.state", "issue.created_on", "issue.type", "issue.id", "changes" as repo_name, repo_link, issue_creator, issue_priority, issue_kind, issue_link, issue_title, issue_content, issue_assignee, issue_state, issue_created_on, issue_type, issue_id, changes nodrop
| where repo_name matches "{{repo_name}}"  AND issue_priority matches "{{issue_priority}}"
| json field=changes "priority.old", "priority.new" as issue_priority_old, issue_priority_new nodrop
```

**BitBucket/Bitbucket - Issues/Issues by Assignee**
```
_sourceCategory = Labs/bitbucket  %"x-event-key"="issue:created"
| json field=_raw "repository.full_name", "repository.links.html.href" , "actor.nickname", "issue.priority", "issue.kind", "issue.links.html.href", "issue.title", "issue.content.raw", "issue.assignee.nickname", "issue.state", "issue.created_on", "issue.type", "issue.id" as repo_name, repo_link, issue_creator, issue_priority, issue_kind, issue_link, issue_title, issue_content, issue_assignee, issue_state, issue_created_on, issue_type, issue_id nodrop
```

**BitBucket/Bitbucket - Issues/Issues by Priority**
```
_sourceCategory = Labs/bitbucket  %"x-event-key"="issue:created"
| json field=_raw "repository.full_name", "repository.links.html.href" , "actor.nickname", "issue.priority", "issue.kind", "issue.links.html.href", "issue.title", "issue.content.raw", "issue.assignee.nickname", "issue.state", "issue.created_on", "issue.type", "issue.id" as repo_name, repo_link, issue_creator, issue_priority, issue_kind, issue_link, issue_title, issue_content, issue_assignee, issue_state, issue_created_on, issue_type, issue_id nodrop
```

**BitBucket/Bitbucket - Issues/Issues by Project**
```
_sourceCategory = Labs/bitbucket  %"x-event-key"="issue:created"
| json field=_raw "repository.full_name", "repository.links.html.href" , "actor.nickname", "issue.priority", "issue.kind", "issue.links.html.href", "issue.title", "issue.content.raw", "issue.assignee.nickname", "issue.state", "issue.created_on", "issue.type", "issue.id" as repo_name, repo_link, issue_creator, issue_priority, issue_kind, issue_link, issue_title, issue_content, issue_assignee, issue_state, issue_created_on, issue_type, issue_id nodrop
```

**BitBucket/Bitbucket - Issues/Issues by Type**
```
_sourceCategory = Labs/bitbucket  %"x-event-key"="issue:created"
| json field=_raw "repository.full_name", "repository.links.html.href" , "actor.nickname", "issue.priority", "issue.kind", "issue.links.html.href", "issue.title", "issue.content.raw", "issue.assignee.nickname", "issue.state", "issue.created_on", "issue.type", "issue.id" as repo_name, repo_link, issue_creator, issue_priority, issue_kind, issue_link, issue_title, issue_content, issue_assignee, issue_state, issue_created_on, issue_type, issue_id nodrop
```

**BitBucket/Bitbucket - Issues/Issues Escalated to Blocker**
```
_sourceCategory = Labs/bitbucket  %"x-event-key"="issue:updated"
| json field=_raw "repository.full_name", "repository.links.html.href" , "actor.nickname", "issue.priority", "issue.kind", "issue.links.html.href", "issue.title", "issue.content.raw", "issue.assignee.nickname", "issue.state", "issue.created_on", "issue.type", "issue.id", "changes" as repo_name, repo_link, issue_creator, issue_priority, issue_kind, issue_link, issue_title, issue_content, issue_assignee, issue_state, issue_created_on, issue_type, issue_id, changes nodrop
| where repo_name matches "{{repo_name}}"  AND issue_priority matches "{{issue_priority}}"
| json field=changes "priority.old", "priority.new" as issue_priority_old, issue_priority_new
```

**BitBucket/Bitbucket - Issues/Issues Over Time**
```
_sourceCategory = Labs/bitbucket  %"x-event-key"="issue:created"
| json field=_raw "repository.full_name", "repository.links.html.href" , "actor.nickname", "issue.priority", "issue.kind", "issue.links.html.href", "issue.title", "issue.content.raw", "issue.assignee.nickname", "issue.state", "issue.created_on", "issue.type", "issue.id" as repo_name, repo_link, issue_creator, issue_priority, issue_kind, issue_link, issue_title, issue_content, issue_assignee, issue_state, issue_created_on, issue_type, issue_id nodrop
```

**BitBucket/Bitbucket - Overview/Blockers by Repository**
```
_sourceCategory = Labs/bitbucket ( %"x-event-key"="issue:updated" or  %"x-event-key"="issue:created")
| json field=_raw "repository.full_name", "repository.links.html.href" , "actor.nickname", "issue.priority", "issue.kind", "issue.links.html.href", "issue.title", "issue.content.raw", "issue.assignee.nickname", "issue.state", "issue.created_on", "issue.type", "issue.id", "changes" as repo_name, repo_link, issue_creator, issue_priority, issue_kind, issue_link, issue_title, issue_content, issue_assignee, issue_state, issue_created_on, issue_type, issue_id, changes nodrop
| json field=changes "priority.old", "priority.new" as issue_priority_old, issue_priority_new nodrop
```

**BitBucket/Bitbucket - Overview/Build - 7 Day Comparison**
```
_sourceCategory = Labs/bitbucket %"x-event-key"=repo:commit_status_* display_name full_name !INPROGRESS !STOPPED
| json "commit_status.state", "commit_status.commit.message", "commit_status.name", "commit_status.type", "actor.display_name", "repository.full_name",  "commit_status.refname",  "commit_status.commit.links.html.href", "commit_status.url", "commit_status.created_on" as build_state, build_commit_message, commit_name, type, commit_user, repo_name, commit_branch, commit_link, build_status_link, date_time
| where build_state in ("SUCCESSFUL", "FAILED")
| parse regex field=date_time "(?<date_time>\d\d\d\d-\d\d-\d\dT\d\d:\d\d:\d\d)"
| parse regex field=build_commit_message "(?<commit_msg_short>.+)"
```

**BitBucket/Bitbucket - Overview/Build State**
```
_sourceCategory = Labs/bitbucket %"x-event-key"=repo:commit_status_* ("SUCCESSFUL" OR "FAILED")
| json "commit_status.state", "commit_status.commit.message", "commit_status.name", "commit_status.type", "actor.display_name", "repository.full_name",  "commit_status.refname",  "commit_status.commit.links.html.href", "commit_status.url", "commit_status.created_on" as build_state, build_commit_message, commit_name, type, commit_user, repo_name, commit_branch, commit_link, build_status_link, date_time
```

**BitBucket/Bitbucket - Overview/Build Summary**
```
_sourceCategory = Labs/bitbucket %"x-event-key"=repo:commit_status_* display_name full_name !INPROGRESS !STOPPED
| json "commit_status.state", "commit_status.commit.message", "commit_status.name", "commit_status.type", "actor.display_name", "repository.full_name",  "commit_status.refname",  "commit_status.commit.links.html.href", "commit_status.url", "commit_status.created_on" as build_state, build_commit_message, commit_name, type, commit_user, repo, commit_branch, commit_link, build_status_link, date_time
| where build_state in ("SUCCESSFUL", "FAILED")
| parse regex field=date_time "(?<date_time>\d\d\d\d-\d\d-\d\dT\d\d:\d\d:\d\d)"
| parse regex field=build_commit_message "(?<commit_msg_short>.+)"
```

**BitBucket/Bitbucket - Overview/Deployment by Status and Environment**
```
_sourceCategory = Labs/bitbucket   deploymentEnvironment pipe_result_link deploy_status commit_link 
| json field=_raw "buildNumber", "deploymentEnvironment", "branch", "repoFullName", "pipe_result_link", "deploy_status", "pr_id", "commit", "tag", "projectKey", "repoOwner", "commit_link" 
```

**BitBucket/Bitbucket - Overview/Deployment Summary**
```
_sourceCategory = Labs/bitbucket   deploymentEnvironment pipe_result_link deploy_status commit_link 
| json field=_raw "buildNumber", "deploymentEnvironment", "branch", "repoFullName", "pipe_result_link", "deploy_status", "pr_id", "commit", "tag", "projectKey", "repoOwner", "commit_link" 
```

**BitBucket/Bitbucket - Overview/Issue Trend**
```
_sourceCategory = Labs/bitbucket  %"x-event-key"="issue:created"
| json field=_raw "repository.full_name", "repository.links.html.href" , "actor.nickname", "issue.priority", "issue.kind", "issue.links.html.href", "issue.title", "issue.content.raw", "issue.assignee.nickname", "issue.state", "issue.created_on", "issue.type", "issue.id" as repo_name, repo_link, issue_creator, issue_priority, issue_kind, issue_link, issue_title, issue_content, issue_assignee, issue_state, issue_created_on, issue_type, issue_id nodrop
```

**BitBucket/Bitbucket - Overview/Issues Created by Repository**
```
_sourceCategory = Labs/bitbucket  %"x-event-key"="issue:created"
| json field=_raw "repository.full_name", "repository.links.html.href" , "actor.nickname", "issue.priority", "issue.kind", "issue.links.html.href", "issue.title", "issue.content.raw", "issue.assignee.nickname", "issue.state", "issue.created_on", "issue.type", "issue.id" as repo_name, repo_link, issue_creator, issue_priority, issue_kind, issue_link, issue_title, issue_content, issue_assignee, issue_state, issue_created_on, issue_type, issue_id nodrop
```

**BitBucket/Bitbucket - Overview/Production Deployments**
```
_sourceCategory = Labs/bitbucket   deploymentEnvironment pipe_result_link deploy_status commit_link 
| json field=_raw "buildNumber", "deploymentEnvironment", "branch", "repoFullName", "pipe_result_link", "deploy_status", "pr_id", "commit", "tag", "projectKey", "repoOwner", "commit_link" 
```

**BitBucket/Bitbucket - Overview/Pull Request - 7 day Comparison**
```
_sourceCategory = Labs/bitbucket  (%"x-event-key"=pullrequest:created or %"x-event-key"=pullrequest:fulfilled) 
| json "pullrequest.id", "pullrequest.title", "pullrequest.description", "pullrequest.reviewers[*].display_name", "pullrequest.destination.repository.full_name", "pullrequest.destination.branch.name", "pullrequest.created_on", "pullrequest.source.branch.name", "pullrequest.author.display_name", "pullrequest.participants[*].user.display_name", "pullrequest.state", "pullrequest.comment_count", "pullrequest.links.html.href" as id, title, description, reviewers, repo_name, dest_branch_name, create_time, source_branch_name, author, participants, state, comment_count, PR_link nodrop
| tourl (PR_Link, title) as PR
| %"x-event-key" as type
| parse regex field=type ".+?:(?<pr_type>.+?)$" 
```

**BitBucket/Bitbucket - Overview/Pull Request Trend**
```
_sourceCategory = Labs/bitbucket %"x-event-key"=pullrequest* 
| json "pullrequest.id", "pullrequest.title", "pullrequest.description", "pullrequest.reviewers[*].display_name", "pullrequest.destination.repository.full_name", "pullrequest.destination.branch.name", "pullrequest.created_on", "pullrequest.source.branch.name", "pullrequest.author.display_name", "pullrequest.participants[*].user.display_name", "pullrequest.state", "pullrequest.comment_count", "pullrequest.links.html.href" as id, title, description, reviewers, repo_name, dest_branch_name, create_time, source_branch_name, author, participants, state, comment_count, PR_link 
```

**BitBucket/Bitbucket - Overview/Pull Requests Created and Fulfilled**
```
_sourceCategory = Labs/bitbucket (%"x-event-key"=pullrequest:created or  %"x-event-key"=pullrequest:fulfilled or  %"x-event-key"=pullrequest:rejected)
| json "pullrequest.id", "pullrequest.title", "pullrequest.description", "pullrequest.reviewers[*].display_name", "pullrequest.destination.repository.full_name", "pullrequest.destination.branch.name", "pullrequest.created_on", "pullrequest.source.branch.name", "pullrequest.author.display_name", "pullrequest.participants[*].user.display_name", "pullrequest.state", "pullrequest.comment_count", "pullrequest.links.html.href" as id, title, description, reviewers, repo_name, dest_branch_name, create_time, source_branch_name, author, participants, state, comment_count, PR_link 
```

**BitBucket/Bitbucket - Pull Requests/‎Avg time to close PRs by Repo**
```
_sourceCategory = Labs/bitbucket %"x-event-key"="pullrequest:fulfilled"
| json "pullrequest.id", "pullrequest.title", "pullrequest.description", "pullrequest.reviewers[*].display_name", "pullrequest.destination.repository.full_name", "pullrequest.destination.branch.name", "pullrequest.created_on", "pullrequest.updated_on", "pullrequest.source.branch.name", "pullrequest.author.display_name", "pullrequest.participants[*].user.display_name", "pullrequest.state", "pullrequest.comment_count", "pullrequest.links.html.href" as id, title, description, reviewers, repo_name, dest_branch_name, create_time, merge_time, source_branch_name, author, participants, state, comment_count, PR_link nodrop
| where repo_name matches "{{repo_name}}"  AND id matches "{{pr_id}}"
| parse regex field=create_time "(?<create_time>\d\d\d\d-\d\d-\d\dT\d\d:\d\d:\d\d)"
| parse regex field=merge_time "(?<merge_time>\d\d\d\d-\d\d-\d\dT\d\d:\d\d:\d\d)"
```

**BitBucket/Bitbucket - Pull Requests/Avg Time to Close PRs by Reviewers**
```
_sourceCategory = Labs/bitbucket %"x-event-key"="pullrequest:fulfilled"
| json "pullrequest.id", "pullrequest.title", "pullrequest.description", "pullrequest.reviewers[*].display_name", "pullrequest.destination.repository.full_name", "pullrequest.destination.branch.name", "pullrequest.created_on", "pullrequest.updated_on", "pullrequest.source.branch.name", "pullrequest.author.display_name", "pullrequest.participants[*].user.display_name", "pullrequest.state", "pullrequest.comment_count", "pullrequest.links.html.href" as id, title, description, reviewers, repo_name, dest_branch_name, create_time, merge_time, source_branch_name, author, participants, state, comment_count, PR_link nodrop
| where repo_name matches "{{repo_name}}"  AND id matches "{{pr_id}}"
| parse regex field=create_time "(?<create_time>\d\d\d\d-\d\d-\d\dT\d\d:\d\d:\d\d)"
| parse regex field=merge_time "(?<merge_time>\d\d\d\d-\d\d-\d\dT\d\d:\d\d:\d\d)"
```

**BitBucket/Bitbucket - Pull Requests/Pull Request - Declined**
```
_sourceCategory = Labs/bitbucket %"x-event-key"="pullrequest:rejected"
| json "pullrequest.id", "pullrequest.title", "pullrequest.description", "pullrequest.reviewers[*].display_name", "pullrequest.destination.repository.full_name", "pullrequest.destination.branch.name", "pullrequest.created_on", "pullrequest.source.branch.name", "pullrequest.author.display_name", "pullrequest.participants[*].user.display_name", "pullrequest.state", "pullrequest.comment_count", "pullrequest.links.html.href", "pullrequest.reason" as id, title, description, reviewers, repo_name, dest_branch_name, create_time, source_branch_name, author, participants, state, comment_count, PR_link, reason nodrop
| where repo_name matches "{{repo_name}}"  AND id matches "{{pr_id}}"
| parse regex field=create_time "(?<create_time>\d\d\d\d-\d\d-\d\dT\d\d:\d\d:\d\d)"
```

**BitBucket/Bitbucket - Pull Requests/Pull Request - Events**
```
_sourceCategory = Labs/bitbucket %"x-event-key"=pullrequest* 
| json "pullrequest.id", "pullrequest.title", "pullrequest.description", "pullrequest.reviewers[*].display_name", "pullrequest.destination.repository.full_name", "pullrequest.destination.branch.name", "pullrequest.created_on", "pullrequest.source.branch.name", "pullrequest.author.display_name", "pullrequest.participants[*].user.display_name", "pullrequest.state", "pullrequest.comment_count", "pullrequest.links.html.href" as id, title, description, reviewers, repo_name, dest_branch_name, create_time, source_branch_name, author, participants, state, comment_count, PR_link 
```

**BitBucket/Bitbucket - Pull Requests/Pull Request - Merged**
```
_sourceCategory = Labs/bitbucket %"x-event-key"="pullrequest:fulfilled"
| json "pullrequest.id", "pullrequest.title", "pullrequest.description", "pullrequest.reviewers[*].display_name", "pullrequest.destination.repository.full_name", "pullrequest.destination.branch.name", "pullrequest.created_on", "pullrequest.source.branch.name", "pullrequest.author.display_name", "pullrequest.participants[*].user.display_name", "pullrequest.state", "pullrequest.comment_count", "pullrequest.links.html.href" as id, title, description, reviewers, repo_name, dest_branch_name, create_time, source_branch_name, author, participants, state, comment_count, PR_link nodrop
| where repo_name matches "{{repo_name}}"  AND id matches "{{pr_id}}"
| parse regex field=create_time "(?<create_time>\d\d\d\d-\d\d-\d\dT\d\d:\d\d:\d\d)"
```

**BitBucket/Bitbucket - Pull Requests/Pull Requests - Opened**
```
_sourceCategory = Labs/bitbucket  %"x-event-key"=pullrequest:created  
| json "pullrequest.id", "pullrequest.title", "pullrequest.description", "pullrequest.reviewers[*].display_name", "pullrequest.destination.repository.full_name", "pullrequest.destination.branch.name", "pullrequest.created_on", "pullrequest.source.branch.name", "pullrequest.author.display_name", "pullrequest.participants[*].user.display_name", "pullrequest.state", "pullrequest.comment_count", "pullrequest.links.html.href" as id, title, description, reviewers, repo_name, dest_branch_name, create_time, source_branch_name, author, participants, state, comment_count, PR_link 
| where repo_name matches "{{repo_name}}"  AND id matches "{{pr_id}}"
| parse regex field=create_time "(?<create_time>\d\d\d\d-\d\d-\d\dT\d\d:\d\d:\d\d)"
```

**BitBucket/Bitbucket - Pull Requests/Pull Requests Created**
```
_sourceCategory = Labs/bitbucket %"x-event-key"="pullrequest:created"
| json "pullrequest.id", "pullrequest.title", "pullrequest.description", "pullrequest.reviewers[*].display_name", "pullrequest.destination.repository.full_name", "pullrequest.destination.branch.name", "pullrequest.created_on", "pullrequest.source.branch.name", "pullrequest.author.display_name", "pullrequest.participants[*].user.display_name", "pullrequest.state", "pullrequest.comment_count", "pullrequest.links.html.href" as id, title, description, reviewers, repo_name, dest_branch_name, create_time, source_branch_name, author, participants, state, comment_count, PR_link nodrop
```

**BitBucket/Bitbucket - Pull Requests/Pull Requests Declined**
```
_sourceCategory = Labs/bitbucket %"x-event-key"="pullrequest:rejected"
| json "pullrequest.id", "pullrequest.title", "pullrequest.description", "pullrequest.reviewers[*].display_name", "pullrequest.destination.repository.full_name", "pullrequest.destination.branch.name", "pullrequest.created_on", "pullrequest.source.branch.name", "pullrequest.author.display_name", "pullrequest.participants[*].user.display_name", "pullrequest.state", "pullrequest.comment_count", "pullrequest.links.html.href" as id, title, description, reviewers, repo_name, dest_branch_name, create_time, source_branch_name, author, participants, state, comment_count, PR_link nodrop
```

**BitBucket/Bitbucket - Pull Requests/Pull Requests Merged**
```
_sourceCategory = Labs/bitbucket %"x-event-key"="pullrequest:fulfilled"
| json "pullrequest.id", "pullrequest.title", "pullrequest.description", "pullrequest.reviewers[*].display_name", "pullrequest.destination.repository.full_name", "pullrequest.destination.branch.name", "pullrequest.created_on", "pullrequest.source.branch.name", "pullrequest.author.display_name", "pullrequest.participants[*].user.display_name", "pullrequest.state", "pullrequest.comment_count", "pullrequest.links.html.href" as id, title, description, reviewers, repo_name, dest_branch_name, create_time, source_branch_name, author, participants, state, comment_count, PR_link nodrop
```

**BitBucket/Bitbucket - Pull Requests/Pull Requests Opened and Merged by Repository**
```
_sourceCategory = Labs/bitbucket  (%"x-event-key"=pullrequest:created or %"x-event-key"=pullrequest:fulfilled) 
| json "pullrequest.id", "pullrequest.title", "pullrequest.description", "pullrequest.reviewers[*].display_name", "pullrequest.destination.repository.full_name", "pullrequest.destination.branch.name", "pullrequest.created_on", "pullrequest.source.branch.name", "pullrequest.author.display_name", "pullrequest.participants[*].user.display_name", "pullrequest.state", "pullrequest.comment_count", "pullrequest.links.html.href" as id, title, description, reviewers, repo_name, dest_branch_name, create_time, source_branch_name, author, participants, state, comment_count, PR_link nodrop
```

**BitBucket/Failed Deployments to Production/Failed Deployments to Production**
```
_sourceCategory = Labs/bitbucket 
| json field=_raw "buildNumber", "deploymentEnvironment", "branch", "repoFullName", "pipe_result_link", "deploy_status", "pr_id", "commit", "tag", "projectKey", "repoOwner", "commit_link" nodrop
```


