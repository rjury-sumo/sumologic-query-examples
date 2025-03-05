# Parsers For Netlify

## Parser:
```
| json "id", "state", "name", "created_at", "updated_at", "user_id", "build_id", "error_message", "branch", "locked", "title", "commit_message", "context", "deploy_time", "manual_deploy", "public_repo", "committer", "published_at" as id, state, name, createdAt, updatedAt, userId, buildId, errorMessage, branch, locked, title, commitMessage, context, deployTime_Sec, manualDeploy, publicRepo, committer, publishedAt nodrop
 
```
### Use Cases:
Commits by Branch, Commits by Repo, Commits by Repo - Trend, Commits Over Time, Deploy 7-Days Comparison, Deployment by Context - Trend, Deployment by Process - Trend, Deployment by Site - Trend, Deployment by Status - Trend, Deployment Status and Environment, Recent Error Notifications, Recent Notifications, Top 10 Longest Deployments, Top Committer, Top Error Message, Transaction Operation



## Parser:
```
| json "id", "state", "name", "created_at", "updated_at", "user_id", "build_id", "error_message", "branch", "locked", "title", "commit_message", "context", "deploy_time", "manual_deploy", "public_repo", "committer", "published_at" as id, state, name, createdAt, updatedAt, userId, buildId, errorMessage, branch, locked, title, commitMessage, context, deployTime, manualDeploy, publicRepo, committer, publishedAt nodrop
 
```
### Use Cases:
Branches by Site, Commits by Branch, Commits by Repo, Commits by Repo - Trend, Commits Over Time, Deleted, Deploy 7-Days Comparison, Deployment by Context, Deployment by Context - Trend, Deployment by Current Status, Deployment by Process, Deployment by Process - Trend, Deployment by Repo type, Deployment by Site - Trend, Deployment by Status - Trend, Deployment Status and Environment, Error, Notifications by States, Notifications Generated, Recent Error Notifications, Recent Notifications, Targeted Branch, Targeted Public Repo, Targeted Sites, Top 10 Longest Deployments, Top Committer, Top Error Message, Total Deployment Trigger, Transaction Operation


