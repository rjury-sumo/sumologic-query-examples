# Parsers For Netlify

**Netlify/Build and Deploy Details/Deploy 7-Days Comparison**
```
_sourceCategory={{Logsdatasource}}  "state" "context"
| json "id", "state", "name", "created_at", "updated_at", "user_id", "build_id", "error_message", "branch", "locked", "title", "commit_message", "context", "deploy_time", "manual_deploy", "public_repo", "committer", "published_at" as id, state, name, createdAt, updatedAt, userId, buildId, errorMessage, branch, locked, title, commitMessage, context, deployTime_Sec, manualDeploy, publicRepo, committer, publishedAt nodrop
```

**Netlify/Build and Deploy Details/Deployment by Context - Trend**
```
_sourceCategory={{Logsdatasource}}  "context"
| json "id", "state", "name", "created_at", "updated_at", "user_id", "build_id", "error_message", "branch", "locked", "title", "commit_message", "context", "deploy_time", "manual_deploy", "public_repo", "committer", "published_at" as id, state, name, createdAt, updatedAt, userId, buildId, errorMessage, branch, locked, title, commitMessage, context, deployTime, manualDeploy, publicRepo, committer, publishedAt nodrop
```

**Netlify/Build and Deploy Details/Deployment by Process - Trend**
```
_sourceCategory={{Logsdatasource}}  "manual_deploy"
| json "id", "state", "name", "created_at", "updated_at", "user_id", "build_id", "error_message", "branch", "locked", "title", "commit_message", "context", "deploy_time", "manual_deploy", "public_repo", "committer", "published_at" as id, state, name, createdAt, updatedAt, userId, buildId, errorMessage, branch, locked, title, commitMessage, context, deployTime, manualDeploy, publicRepo, committer, publishedAt nodrop
```

**Netlify/Build and Deploy Details/Deployment by Site - Trend**
```
_sourceCategory={{Logsdatasource}}  "name"
| json "id", "state", "name", "created_at", "updated_at", "user_id", "build_id", "error_message", "branch", "locked", "title", "commit_message", "context", "deploy_time", "manual_deploy", "public_repo", "committer", "published_at" as id, state, name, createdAt, updatedAt, userId, buildId, errorMessage, branch, locked, title, commitMessage, context, deployTime, manualDeploy, publicRepo, committer, publishedAt nodrop
```

**Netlify/Build and Deploy Details/Deployment by Status - Trend**
```
_sourceCategory={{Logsdatasource}}  "state"
| json "id", "state", "name", "created_at", "updated_at", "user_id", "build_id", "error_message", "branch", "locked", "title", "commit_message", "context", "deploy_time", "manual_deploy", "public_repo", "committer", "published_at" as id, state, name, createdAt, updatedAt, userId, buildId, errorMessage, branch, locked, title, commitMessage, context, deployTime, manualDeploy, publicRepo, committer, publishedAt nodrop
```

**Netlify/Build and Deploy Details/Deployment Status and Environment**
```
_sourceCategory={{Logsdatasource}}  "context" "state"
| json "id", "state", "name", "created_at", "updated_at", "user_id", "build_id", "error_message", "branch", "locked", "title", "commit_message", "context", "deploy_time", "manual_deploy", "public_repo", "committer", "published_at" as id, state, name, createdAt, updatedAt, userId, buildId, errorMessage, branch, locked, title, commitMessage, context, deployTime_Sec, manualDeploy, publicRepo, committer, publishedAt nodrop
```

**Netlify/Build and Deploy Details/Recent Error Notifications**
```
_sourceCategory={{Logsdatasource}}  "error"
| json "id", "state", "name", "created_at", "updated_at", "user_id", "build_id", "error_message", "branch", "locked", "title", "commit_message", "context", "deploy_time", "manual_deploy", "public_repo", "committer", "published_at" as id, state, name, createdAt, updatedAt, userId, buildId, errorMessage, branch, locked, title, commitMessage, context, deployTime_Sec, manualDeploy, publicRepo, committer, publishedAt nodrop
```

**Netlify/Build and Deploy Details/Top 10 Longest Deployments**
```
_sourceCategory={{Logsdatasource}}  "deploy_time"
| json "id", "state", "name", "created_at", "updated_at", "user_id", "build_id", "error_message", "branch", "locked", "title", "commit_message", "context", "deploy_time", "manual_deploy", "public_repo", "committer", "published_at" as id, state, name, createdAt, updatedAt, userId, buildId, errorMessage, branch, locked, title, commitMessage, context, deployTime_Sec, manualDeploy, publicRepo, committer, publishedAt nodrop
```

**Netlify/Build and Deploy Details/Top Error Message**
```
_sourceCategory={{Logsdatasource}}  "error_message"
| json "id", "state", "name", "created_at", "updated_at", "user_id", "build_id", "error_message", "branch", "locked", "title", "commit_message", "context", "deploy_time", "manual_deploy", "public_repo", "committer", "published_at" as id, state, name, createdAt, updatedAt, userId, buildId, errorMessage, branch, locked, title, commitMessage, context, deployTime_Sec, manualDeploy, publicRepo, committer, publishedAt nodrop
```

**Netlify/Build and Deploy Details/Transaction Operation**
```
_sourceCategory={{Logsdatasource}}  "state"
| json "id", "state", "name", "created_at", "updated_at", "user_id", "build_id", "error_message", "branch", "locked", "title", "commit_message", "context", "deploy_time", "manual_deploy", "public_repo", "committer", "published_at" as id, state, name, createdAt, updatedAt, userId, buildId, errorMessage, branch, locked, title, commitMessage, context, deployTime, manualDeploy, publicRepo, committer, publishedAt nodrop
```

**Netlify/Commit Details/Commits by Branch**
```
_sourceCategory={{Logsdatasource}}  "committer" "branch"
| json "id", "state", "name", "created_at", "updated_at", "user_id", "build_id", "error_message", "branch", "locked", "title", "commit_message", "context", "deploy_time", "manual_deploy", "public_repo", "committer", "published_at" as id, state, name, createdAt, updatedAt, userId, buildId, errorMessage, branch, locked, title, commitMessage, context, deployTime, manualDeploy, publicRepo, committer, publishedAt nodrop
```

**Netlify/Commit Details/Commits by Repo**
```
_sourceCategory={{Logsdatasource}}  "committer"
| json "id", "state", "name", "created_at", "updated_at", "user_id", "build_id", "error_message", "branch", "locked", "title", "commit_message", "context", "deploy_time", "manual_deploy", "public_repo", "committer", "published_at" as id, state, name, createdAt, updatedAt, userId, buildId, errorMessage, branch, locked, title, commitMessage, context, deployTime, manualDeploy, publicRepo, committer, publishedAt nodrop
```

**Netlify/Commit Details/Commits by Repo - Trend**
```
_sourceCategory={{Logsdatasource}}  "committer" "name"
| json "id", "state", "name", "created_at", "updated_at", "user_id", "build_id", "error_message", "branch", "locked", "title", "commit_message", "context", "deploy_time", "manual_deploy", "public_repo", "committer", "published_at" as id, state, name, createdAt, updatedAt, userId, buildId, errorMessage, branch, locked, title, commitMessage, context, deployTime, manualDeploy, publicRepo, committer, publishedAt nodrop
```

**Netlify/Commit Details/Commits Over Time**
```
_sourceCategory={{Logsdatasource}}  "committer"
| json "id", "state", "name", "created_at", "updated_at", "user_id", "build_id", "error_message", "branch", "locked", "title", "commit_message", "context", "deploy_time", "manual_deploy", "public_repo", "committer", "published_at" as id, state, name, createdAt, updatedAt, userId, buildId, errorMessage, branch, locked, title, commitMessage, context, deployTime, manualDeploy, publicRepo, committer, publishedAt nodrop
```

**Netlify/Commit Details/Top Committer**
```
_sourceCategory={{Logsdatasource}}  "committer"
| json "id", "state", "name", "created_at", "updated_at", "user_id", "build_id", "error_message", "branch", "locked", "title", "commit_message", "context", "deploy_time", "manual_deploy", "public_repo", "committer", "published_at" as id, state, name, createdAt, updatedAt, userId, buildId, errorMessage, branch, locked, title, commitMessage, context, deployTime_Sec, manualDeploy, publicRepo, committer, publishedAt nodrop
```

**Netlify/Overview/Branches by Site**
```
_sourceCategory={{Logsdatasource}}  "name" "branch"
| json "id", "state", "name", "created_at", "updated_at", "user_id", "build_id", "error_message", "branch", "locked", "title", "commit_message", "context", "deploy_time", "manual_deploy", "public_repo", "committer", "published_at" as id, state, name, createdAt, updatedAt, userId, buildId, errorMessage, branch, locked, title, commitMessage, context, deployTime, manualDeploy, publicRepo, committer, publishedAt nodrop
```

**Netlify/Overview/Deleted**
```
_sourceCategory={{Logsdatasource}}  "deleted"
| json "id", "state", "name", "created_at", "updated_at", "user_id", "build_id", "error_message", "branch", "locked", "title", "commit_message", "context", "deploy_time", "manual_deploy", "public_repo", "committer", "published_at" as id, state, name, createdAt, updatedAt, userId, buildId, errorMessage, branch, locked, title, commitMessage, context, deployTime, manualDeploy, publicRepo, committer, publishedAt nodrop
```

**Netlify/Overview/Deployment by Context**
```
_sourceCategory={{Logsdatasource}}  "context"
| json "id", "state", "name", "created_at", "updated_at", "user_id", "build_id", "error_message", "branch", "locked", "title", "commit_message", "context", "deploy_time", "manual_deploy", "public_repo", "committer", "published_at" as id, state, name, createdAt, updatedAt, userId, buildId, errorMessage, branch, locked, title, commitMessage, context, deployTime, manualDeploy, publicRepo, committer, publishedAt nodrop
```

**Netlify/Overview/Deployment by Current Status**
```
_sourceCategory={{Logsdatasource}}  "state"
| json "id", "state", "name", "created_at", "updated_at", "user_id", "build_id", "error_message", "branch", "locked", "title", "commit_message", "context", "deploy_time", "manual_deploy", "public_repo", "committer", "published_at" as id, state, name, createdAt, updatedAt, userId, buildId, errorMessage, branch, locked, title, commitMessage, context, deployTime, manualDeploy, publicRepo, committer, publishedAt nodrop
```

**Netlify/Overview/Deployment by Process**
```
_sourceCategory={{Logsdatasource}}  "manual_deploy"
| json "id", "state", "name", "created_at", "updated_at", "user_id", "build_id", "error_message", "branch", "locked", "title", "commit_message", "context", "deploy_time", "manual_deploy", "public_repo", "committer", "published_at" as id, state, name, createdAt, updatedAt, userId, buildId, errorMessage, branch, locked, title, commitMessage, context, deployTime, manualDeploy, publicRepo, committer, publishedAt nodrop
```

**Netlify/Overview/Deployment by Repo type**
```
_sourceCategory={{Logsdatasource}}  "public_repo"
| json "id", "state", "name", "created_at", "updated_at", "user_id", "build_id", "error_message", "branch", "locked", "title", "commit_message", "context", "deploy_time", "manual_deploy", "public_repo", "committer", "published_at" as id, state, name, createdAt, updatedAt, userId, buildId, errorMessage, branch, locked, title, commitMessage, context, deployTime, manualDeploy, publicRepo, committer, publishedAt nodrop
```

**Netlify/Overview/Error**
```
_sourceCategory={{Logsdatasource}}  "error"
| json "id", "state", "name", "created_at", "updated_at", "user_id", "build_id", "error_message", "branch", "locked", "title", "commit_message", "context", "deploy_time", "manual_deploy", "public_repo", "committer", "published_at" as id, state, name, createdAt, updatedAt, userId, buildId, errorMessage, branch, locked, title, commitMessage, context, deployTime, manualDeploy, publicRepo, committer, publishedAt nodrop
```

**Netlify/Overview/Notifications by States**
```
_sourceCategory={{Logsdatasource}}  "state"
| json "id", "state", "name", "created_at", "updated_at", "user_id", "build_id", "error_message", "branch", "locked", "title", "commit_message", "context", "deploy_time", "manual_deploy", "public_repo", "committer", "published_at" as id, state, name, createdAt, updatedAt, userId, buildId, errorMessage, branch, locked, title, commitMessage, context, deployTime, manualDeploy, publicRepo, committer, publishedAt nodrop
```

**Netlify/Overview/Notifications Generated**
```
_sourceCategory={{Logsdatasource}}  "id" 
| json "id", "state", "name", "created_at", "updated_at", "user_id", "build_id", "error_message", "branch", "locked", "title", "commit_message", "context", "deploy_time", "manual_deploy", "public_repo", "committer", "published_at" as id, state, name, createdAt, updatedAt, userId, buildId, errorMessage, branch, locked, title, commitMessage, context, deployTime, manualDeploy, publicRepo, committer, publishedAt nodrop
```

**Netlify/Overview/Recent Notifications**
```
_sourceCategory={{Logsdatasource}} 
| json "id", "state", "name", "created_at", "updated_at", "user_id", "build_id", "error_message", "branch", "locked", "title", "commit_message", "context", "deploy_time", "manual_deploy", "public_repo", "committer", "published_at" as id, state, name, createdAt, updatedAt, userId, buildId, errorMessage, branch, locked, title, commitMessage, context, deployTime_Sec, manualDeploy, publicRepo, committer, publishedAt nodrop
```

**Netlify/Overview/Targeted Branch**
```
_sourceCategory={{Logsdatasource}}  "branch"
| json "id", "state", "name", "created_at", "updated_at", "user_id", "build_id", "error_message", "branch", "locked", "title", "commit_message", "context", "deploy_time", "manual_deploy", "public_repo", "committer", "published_at" as id, state, name, createdAt, updatedAt, userId, buildId, errorMessage, branch, locked, title, commitMessage, context, deployTime, manualDeploy, publicRepo, committer, publishedAt nodrop
```

**Netlify/Overview/Targeted Public Repo**
```
_sourceCategory={{Logsdatasource}}  "public_repo"
| json "id", "state", "name", "created_at", "updated_at", "user_id", "build_id", "error_message", "branch", "locked", "title", "commit_message", "context", "deploy_time", "manual_deploy", "public_repo", "committer", "published_at" as id, state, name, createdAt, updatedAt, userId, buildId, errorMessage, branch, locked, title, commitMessage, context, deployTime, manualDeploy, publicRepo, committer, publishedAt nodrop
```

**Netlify/Overview/Targeted Sites**
```
_sourceCategory={{Logsdatasource}}  "name"
| json "id", "state", "name", "created_at", "updated_at", "user_id", "build_id", "error_message", "branch", "locked", "title", "commit_message", "context", "deploy_time", "manual_deploy", "public_repo", "committer", "published_at" as id, state, name, createdAt, updatedAt, userId, buildId, errorMessage, branch, locked, title, commitMessage, context, deployTime, manualDeploy, publicRepo, committer, publishedAt nodrop
```

**Netlify/Overview/Total Deployment Trigger**
```
_sourceCategory={{Logsdatasource}}  "id"
| json "id", "state", "name", "created_at", "updated_at", "user_id", "build_id", "error_message", "branch", "locked", "title", "commit_message", "context", "deploy_time", "manual_deploy", "public_repo", "committer", "published_at" as id, state, name, createdAt, updatedAt, userId, buildId, errorMessage, branch, locked, title, commitMessage, context, deployTime, manualDeploy, publicRepo, committer, publishedAt nodrop
```


