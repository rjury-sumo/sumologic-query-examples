# Parsers For BitBucket

## Parser:
```
| json "commit_status.state", "commit_status.commit.message", "commit_status.name", "commit_status.type", "actor.display_name", "repository.full_name",  "commit_status.refname",  "commit_status.commit.links.html.href", "commit_status.url", "commit_status.created_on" as build_state, build_commit_message, commit_name, type, commit_user, repo_name, commit_branch, commit_link, build_status_link, date_time
 `n```
### Use Cases:
Build - 7 Day Comparison, Build State, Build States by Repository, Build Summary, Builds Over Time, Deployment (s), Deployment by Status and Environment, Deployment Summary, Deployment(s), Failed Builds, Failed Deployment(s), Failed Deployments to Production, Issue Summary, Issues, Issues by Assignee, Issues by Priority, Issues by Project, Issues by Type, Issues Escalated to Blocker, Issues Over Time, One Day Comparison, Production Deployments, ‎‎‎Success Deployment(s)‎‎‎, Successful Builds, Successful Deploy trends



## Parser:
```
| json "commit_status.state", "commit_status.commit.message", "commit_status.name", "commit_status.type", "actor.display_name", "repository.full_name",  "commit_status.refname",  "commit_status.commit.links.html.href", "commit_status.url", "commit_status.created_on" as build_state, build_commit_message, commit_name, type, commit_user, repo_name, commit_branch, commit_link, build_status_link, date_time
| parse regex field=date_time "(?<date_time>\d\d\d\d-\d\d-\d\dT\d\d:\d\d:\d\d)"
| parse regex field=build_commit_message "(?<commit_msg_short>.+)"
 `n```
### Use Cases:
Build - 7 Day Comparison, Build States by Repository, Build Summary, Builds Over Time, Deployment (s), Deployment by Status and Environment, Deployment Summary, Deployment(s), Failed Builds, Failed Deployment(s), Failed Deployments to Production, Issue Summary, Issues, Issues by Assignee, Issues by Priority, Issues by Project, Issues by Type, Issues Escalated to Blocker, Issues Over Time, One Day Comparison, Production Deployments, ‎‎‎Success Deployment(s)‎‎‎, Successful Builds, Successful Deploy trends



## Parser:
```
| json "commit_status.state", "commit_status.commit.message", "commit_status.name", "commit_status.type", "actor.display_name", "repository.full_name",  "commit_status.refname",  "commit_status.commit.links.html.href", "commit_status.url", "commit_status.created_on" as build_state, build_commit_message, commit_name, type, commit_user, repo, commit_branch, commit_link, build_status_link, date_time
| parse regex field=date_time "(?<date_time>\d\d\d\d-\d\d-\d\dT\d\d:\d\d:\d\d)"
| parse regex field=build_commit_message "(?<commit_msg_short>.+)"
 `n```
### Use Cases:
Build States by Repository, Build Summary, Builds Over Time, Deployment (s), Deployment by Status and Environment, Deployment Summary, Deployment(s), Failed Builds, Failed Deployment(s), Failed Deployments to Production, Issue Summary, Issues, Issues by Assignee, Issues by Priority, Issues by Project, Issues by Type, Issues Escalated to Blocker, Issues Over Time, One Day Comparison, Production Deployments, ‎‎Success Deployment(s)‎‎, Successful Builds, Successful Deploy trends



## Parser:
```
| json "pullrequest.id", "pullrequest.title", "pullrequest.description", "pullrequest.reviewers[*].display_name", "pullrequest.destination.repository.full_name", "pullrequest.destination.branch.name", "pullrequest.created_on", "pullrequest.source.branch.name", "pullrequest.author.display_name", "pullrequest.participants[*].user.display_name", "pullrequest.state", "pullrequest.comment_count", "pullrequest.links.html.href" as id, title, description, reviewers, repo_name, dest_branch_name, create_time, source_branch_name, author, participants, state, comment_count, PR_link 
 `n```
### Use Cases:
Blockers by Repository, Build - 7 Day Comparison, Build State, Build States by Repository, Build Summary, Builds Over Time, Deployment (s), Deployment by Status and Environment, Deployment Summary, Deployment(s), Failed Builds, Failed Deployment(s), Failed Deployments to Production, Issue Summary, Issue Trend, Issues, Issues by Assignee, Issues by Priority, Issues by Project, Issues by Type, Issues Created by Repository, Issues Escalated to Blocker, Issues Over Time, One Day Comparison, Production Deployments, Pull Request - 7 day Comparison, Pull Request - Events, Pull Request Trend, Pull Requests Created and Fulfilled, ‎Success Deployment(s)‎, Successful Builds, Successful Deploy trends



## Parser:
```
| json "pullrequest.id", "pullrequest.title", "pullrequest.description", "pullrequest.reviewers[*].display_name", "pullrequest.destination.repository.full_name", "pullrequest.destination.branch.name", "pullrequest.created_on", "pullrequest.source.branch.name", "pullrequest.author.display_name", "pullrequest.participants[*].user.display_name", "pullrequest.state", "pullrequest.comment_count", "pullrequest.links.html.href" as id, title, description, reviewers, repo_name, dest_branch_name, create_time, source_branch_name, author, participants, state, comment_count, PR_link 
| parse regex field=create_time "(?<create_time>\d\d\d\d-\d\d-\d\dT\d\d:\d\d:\d\d)"
 `n```
### Use Cases:
Blockers by Repository, Build - 7 Day Comparison, Build State, Build States by Repository, Build Summary, Builds Over Time, Deployment (s), Deployment by Status and Environment, Deployment Summary, Deployment(s), Failed Builds, ‎‎Failed Deployment(s)‎‎, Failed Deployments to Production, Issue Summary, Issue Trend, Issues, Issues by Assignee, Issues by Priority, Issues by Project, Issues by Type, Issues Created by Repository, Issues Escalated to Blocker, Issues Over Time, One Day Comparison, Production Deployments, Pull Request - 7 day Comparison, Pull Request - Events, Pull Request Trend, Pull Requests - Opened, Pull Requests Created and Fulfilled, ‎‎‎Success Deployment(s)‎‎‎, Successful Builds, Successful Deploy trends



## Parser:
```
| json "pullrequest.id", "pullrequest.title", "pullrequest.description", "pullrequest.reviewers[*].display_name", "pullrequest.destination.repository.full_name", "pullrequest.destination.branch.name", "pullrequest.created_on", "pullrequest.source.branch.name", "pullrequest.author.display_name", "pullrequest.participants[*].user.display_name", "pullrequest.state", "pullrequest.comment_count", "pullrequest.links.html.href" as id, title, description, reviewers, repo_name, dest_branch_name, create_time, source_branch_name, author, participants, state, comment_count, PR_link nodrop
 `n```
### Use Cases:
Blockers by Repository, Build - 7 Day Comparison, Build State, Build States by Repository, Build Summary, Builds Over Time, Deployment (s), Deployment by Status and Environment, Deployment Summary, Deployment(s), Failed Builds, Failed Deployment(s), Failed Deployments to Production, Issue Summary, Issue Trend, Issues, Issues by Assignee, Issues by Priority, Issues by Project, Issues by Type, Issues Created by Repository, Issues Escalated to Blocker, Issues Over Time, One Day Comparison, Production Deployments, Pull Request - 7 day Comparison, Pull Request - Events, Pull Request Trend, Pull Requests - Opened, Pull Requests Created, Pull Requests Created and Fulfilled, Pull Requests Declined, Pull Requests Merged, Pull Requests Opened and Merged by Repository, ‎‎Success Deployment(s)‎‎, Successful Builds, Successful Deploy trends



## Parser:
```
| json "pullrequest.id", "pullrequest.title", "pullrequest.description", "pullrequest.reviewers[*].display_name", "pullrequest.destination.repository.full_name", "pullrequest.destination.branch.name", "pullrequest.created_on", "pullrequest.source.branch.name", "pullrequest.author.display_name", "pullrequest.participants[*].user.display_name", "pullrequest.state", "pullrequest.comment_count", "pullrequest.links.html.href" as id, title, description, reviewers, repo_name, dest_branch_name, create_time, source_branch_name, author, participants, state, comment_count, PR_link nodrop
| parse regex field=create_time "(?<create_time>\d\d\d\d-\d\d-\d\dT\d\d:\d\d:\d\d)"
 `n```
### Use Cases:
Blockers by Repository, Build - 7 Day Comparison, Build State, Build States by Repository, Build Summary, Builds Over Time, Deployment (s), Deployment by Status and Environment, Deployment Summary, Deployment(s), Failed Builds, ‎Failed Deployment(s)‎, Failed Deployments to Production, Issue Summary, Issue Trend, Issues, Issues by Assignee, Issues by Priority, Issues by Project, Issues by Type, Issues Created by Repository, Issues Escalated to Blocker, Issues Over Time, One Day Comparison, Production Deployments, Pull Request - 7 day Comparison, Pull Request - Declined, Pull Request - Events, Pull Request - Merged, Pull Request Trend, Pull Requests - Opened, Pull Requests Created, Pull Requests Created and Fulfilled, Pull Requests Declined, Pull Requests Merged, Pull Requests Opened and Merged by Repository, ‎‎Success Deployment(s)‎‎, Successful Builds, Successful Deploy trends



## Parser:
```
| json "pullrequest.id", "pullrequest.title", "pullrequest.description", "pullrequest.reviewers[*].display_name", "pullrequest.destination.repository.full_name", "pullrequest.destination.branch.name", "pullrequest.created_on", "pullrequest.source.branch.name", "pullrequest.author.display_name", "pullrequest.participants[*].user.display_name", "pullrequest.state", "pullrequest.comment_count", "pullrequest.links.html.href" as id, title, description, reviewers, repo_name, dest_branch_name, create_time, source_branch_name, author, participants, state, comment_count, PR_link nodrop
| parse regex field=type ".+?:(?<pr_type>.+?)$" 
 `n```
### Use Cases:
Build - 7 Day Comparison, Build State, Build States by Repository, Build Summary, Builds Over Time, Deployment (s), Deployment by Status and Environment, Deployment Summary, Deployment(s), Failed Builds, ‎Failed Deployment(s)‎, Failed Deployments to Production, Issue Summary, Issues, Issues by Assignee, Issues by Priority, Issues by Project, Issues by Type, Issues Escalated to Blocker, Issues Over Time, One Day Comparison, Production Deployments, Pull Request - 7 day Comparison, Pull Request Trend, ‎‎‎Success Deployment(s)‎‎‎, Successful Builds, Successful Deploy trends



## Parser:
```
| json "pullrequest.id", "pullrequest.title", "pullrequest.description", "pullrequest.reviewers[*].display_name", "pullrequest.destination.repository.full_name", "pullrequest.destination.branch.name", "pullrequest.created_on", "pullrequest.source.branch.name", "pullrequest.author.display_name", "pullrequest.participants[*].user.display_name", "pullrequest.state", "pullrequest.comment_count", "pullrequest.links.html.href", "pullrequest.reason" as id, title, description, reviewers, repo_name, dest_branch_name, create_time, source_branch_name, author, participants, state, comment_count, PR_link, reason nodrop
| parse regex field=create_time "(?<create_time>\d\d\d\d-\d\d-\d\dT\d\d:\d\d:\d\d)"
 `n```
### Use Cases:
Blockers by Repository, Build - 7 Day Comparison, Build State, Build States by Repository, Build Summary, Builds Over Time, Deployment (s), Deployment by Status and Environment, Deployment Summary, Deployment(s), Failed Builds, Failed Deployment(s), Failed Deployments to Production, Issue Summary, Issue Trend, Issues, Issues by Assignee, Issues by Priority, Issues by Project, Issues by Type, Issues Created by Repository, Issues Escalated to Blocker, Issues Over Time, One Day Comparison, Production Deployments, Pull Request - 7 day Comparison, Pull Request - Declined, Pull Request - Events, Pull Request Trend, Pull Requests - Opened, Pull Requests Created, Pull Requests Created and Fulfilled, Pull Requests Declined, Pull Requests Merged, Pull Requests Opened and Merged by Repository, ‎‎Success Deployment(s)‎‎, Successful Builds, Successful Deploy trends



## Parser:
```
| json "pullrequest.id", "pullrequest.title", "pullrequest.description", "pullrequest.reviewers[*].display_name", "pullrequest.destination.repository.full_name", "pullrequest.destination.branch.name", "pullrequest.created_on", "pullrequest.updated_on", "pullrequest.source.branch.name", "pullrequest.author.display_name", "pullrequest.participants[*].user.display_name", "pullrequest.state", "pullrequest.comment_count", "pullrequest.links.html.href" as id, title, description, reviewers, repo_name, dest_branch_name, create_time, merge_time, source_branch_name, author, participants, state, comment_count, PR_link nodrop
| parse regex field=create_time "(?<create_time>\d\d\d\d-\d\d-\d\dT\d\d:\d\d:\d\d)"
| parse regex field=merge_time "(?<merge_time>\d\d\d\d-\d\d-\d\dT\d\d:\d\d:\d\d)"
 `n```
### Use Cases:
‎Avg time to close PRs by Repo, Avg Time to Close PRs by Reviewers, Blockers by Repository, Build - 7 Day Comparison, Build State, Build States by Repository, Build Summary, Builds Over Time, Deployment (s), Deployment by Status and Environment, Deployment Summary, Deployment(s), Failed Builds, Failed Deployment(s), Failed Deployments to Production, Issue Summary, Issue Trend, Issues, Issues by Assignee, Issues by Priority, Issues by Project, Issues by Type, Issues Created by Repository, Issues Escalated to Blocker, Issues Over Time, One Day Comparison, Production Deployments, Pull Request - 7 day Comparison, Pull Request - Declined, Pull Request - Events, Pull Request - Merged, Pull Request Trend, Pull Requests - Opened, Pull Requests Created, Pull Requests Created and Fulfilled, Pull Requests Declined, Pull Requests Merged, Pull Requests Opened and Merged by Repository, ‎‎Success Deployment(s)‎‎, Successful Builds, Successful Deploy trends



## Parser:
```
| json field=_raw "buildNumber", "deploymentEnvironment", "branch", "repoFullName", "pipe_result_link", "deploy_status", "pr_id", "commit", "tag", "projectKey", "repoOwner", "commit_link" 
 `n```
### Use Cases:
Build States by Repository, Builds Over Time, Deployment (s), Deployment by Status and Environment, Deployment Summary, Deployment(s), Failed Builds, ‎‎Failed Deployment(s)‎‎, Failed Deployments to Production, Issue Summary, Issues, Issues by Assignee, Issues by Priority, Issues by Project, Issues by Type, Issues Escalated to Blocker, Issues Over Time, One Day Comparison, Production Deployments, ‎‎Success Deployment(s)‎‎, Successful Builds, Successful Deploy trends



## Parser:
```
| json field=_raw "buildNumber", "deploymentEnvironment", "branch", "repoFullName", "pipe_result_link", "deploy_status", "pr_id", "commit", "tag", "projectKey", "repoOwner", "commit_link" , "event_date" 
 `n```
### Use Cases:
Deployment (s), Deployment(s), Failed Deployment(s), Failed Deployments to Production



## Parser:
```
| json field=_raw "buildNumber", "deploymentEnvironment", "branch", "repoFullName", "pipe_result_link", "deploy_status", "pr_id", "commit", "tag", "projectKey", "repoOwner", "commit_link" nodrop
 `n```
### Use Cases:
Failed Deployments to Production



## Parser:
```
| json field=_raw "buildNumber", "deploymentEnvironment", "branch", "repoFullName", "pipe_result_link", "deploy_status", "pr_id", "commit", "tag", "projectKey", "repoOwner", "commit_link", "event_date" 
 `n```
### Use Cases:
Deployment (s), Deployment(s), Failed Deployment(s), Failed Deployments to Production, One Day Comparison, ‎Success Deployment(s)‎, Successful Deploy trends



## Parser:
```
| json field=_raw "buildNumber", "deploymentEnvironment", "branch", "repoFullName", "pipe_result_link", "deploy_status", "pr_id", "commit", "tag", "projectKey", "repoOwner", "commit_link", "event_date"  
 `n```
### Use Cases:
Deployment (s), Deployment(s), Failed Deployment(s), Failed Deployments to Production, ‎Success Deployment(s)‎



## Parser:
```
| json field=_raw "repository.full_name", "repository.links.html.href" , "actor.nickname", "issue.priority", "issue.kind", "issue.links.html.href", "issue.title", "issue.content.raw", "issue.assignee.nickname", "issue.state", "issue.created_on", "issue.type", "issue.id" as repo_name, repo_link, issue_creator, issue_priority, issue_kind, issue_link, issue_title, issue_content, issue_assignee, issue_state, issue_created_on, issue_type, issue_id nodrop
 `n```
### Use Cases:
Build - 7 Day Comparison, Build State, Build States by Repository, Build Summary, Builds Over Time, Deployment (s), Deployment by Status and Environment, Deployment Summary, Deployment(s), Failed Builds, ‎Failed Deployment(s)‎, Failed Deployments to Production, Issue Summary, Issue Trend, Issues, Issues by Assignee, Issues by Priority, Issues by Project, Issues by Type, Issues Created by Repository, Issues Escalated to Blocker, Issues Over Time, One Day Comparison, Production Deployments, Pull Request - 7 day Comparison, Pull Request Trend, Pull Requests Created and Fulfilled, ‎‎‎Success Deployment(s)‎‎‎, Successful Builds, Successful Deploy trends



## Parser:
```
| json field=_raw "repository.full_name", "repository.links.html.href" , "actor.nickname", "issue.priority", "issue.kind", "issue.links.html.href", "issue.title", "issue.content.raw", "issue.assignee.nickname", "issue.state", "issue.created_on", "issue.type", "issue.id", "changes" as repo_name, repo_link, issue_creator, issue_priority, issue_kind, issue_link, issue_title, issue_content, issue_assignee, issue_state, issue_created_on, issue_type, issue_id, changes nodrop
| json field=changes "priority.old", "priority.new" as issue_priority_old, issue_priority_new
 `n```
### Use Cases:
Build States by Repository, Builds Over Time, Deployment (s), Deployment(s), Failed Builds, ‎‎Failed Deployment(s)‎‎, Failed Deployments to Production, Issue Summary, Issues, Issues by Assignee, Issues by Priority, Issues by Project, Issues by Type, Issues Escalated to Blocker, Issues Over Time, One Day Comparison, ‎‎‎Success Deployment(s)‎‎‎, Successful Builds, Successful Deploy trends



## Parser:
```
| json field=_raw "repository.full_name", "repository.links.html.href" , "actor.nickname", "issue.priority", "issue.kind", "issue.links.html.href", "issue.title", "issue.content.raw", "issue.assignee.nickname", "issue.state", "issue.created_on", "issue.type", "issue.id", "changes" as repo_name, repo_link, issue_creator, issue_priority, issue_kind, issue_link, issue_title, issue_content, issue_assignee, issue_state, issue_created_on, issue_type, issue_id, changes nodrop
| json field=changes "priority.old", "priority.new" as issue_priority_old, issue_priority_new nodrop
 `n```
### Use Cases:
Blockers by Repository, Build - 7 Day Comparison, Build State, Build States by Repository, Build Summary, Builds Over Time, Deployment (s), Deployment by Status and Environment, Deployment Summary, Deployment(s), Failed Builds, Failed Deployment(s), Failed Deployments to Production, Issue Summary, Issue Trend, Issues, Issues by Assignee, Issues by Priority, Issues by Project, Issues by Type, Issues Created by Repository, Issues Escalated to Blocker, Issues Over Time, One Day Comparison, Production Deployments, Pull Request - 7 day Comparison, Pull Request Trend, Pull Requests Created and Fulfilled, ‎‎‎Success Deployment(s)‎‎‎, Successful Builds, Successful Deploy trends


