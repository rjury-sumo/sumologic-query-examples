# Parsers For GitHub

## Parser:
```
| json  "commits[*].id[*]", "repository.name", "pusher.name"  as  commit_size, repo_name, user
```
### Use Cases:
Commits by Repository, Commits Over Time, Issue opened in last 24 Hours, Issues Opened, Closed and Reopened by Repository, Issues Opened, Closed Over Time, Open Issues, Open Pull Requests, Pull Requests opened in last 24 Hours, Pull Requests Opened Over Time, Still Opened Pull Requests, Top 10 Users by Commit



## Parser:
```
| json  "commits[*].id[*]", "repository.name", "pusher.name" as  commit_size, repo_name, user
```
### Use Cases:
Commits Over Time, Issue opened in last 24 Hours, Issues Opened, Closed Over Time, Pull Requests opened in last 24 Hours, Still Opened Pull Requests



## Parser:
```
| json  "repository.name" as  repo_name
```
### Use Cases:
Commits by Repository, Commits Over Time, Fork Count by Repository Over Time, Issue opened in last 24 Hours, Issues Opened, Closed and Reopened by Repository, Issues Opened, Closed Over Time, Members Added, Removed, Open Issues, Open Pull Requests, Private Repositories Made Public, Pull Requests Opened by Repository, Pull Requests opened in last 24 Hours, Pull Requests Opened Over Time, Repositories Created, Still Opened Pull Requests, Teams Added to Repository, Top 10 Users by Commit



## Parser:
```
| json "action", "issue.id", "issue.number", "issue.title" , "issue.state", "issue.created_at", "issue.updated_at", "issue.closed_at", "issue.body", "issue.user.login", "issue.url", "repository.name", "repository.open_issues_count"  as action,  issue_ID, issue_num, issue_title, state, createdAt, updatedAt, closedAt, body, user, url, repo_name, repoOpenIssueCnt
```
### Use Cases:
Commits Over Time, Issue opened in last 24 Hours, Issues Opened, Closed and Reopened by Repository, Issues Opened, Closed Over Time, Pull Requests opened in last 24 Hours, Still Opened Pull Requests



## Parser:
```
| json "action", "issue.id", "issue.number", "issue.title" , "issue.state", "issue.created_at", "issue.updated_at", "issue.closed_at", "issue.body", "issue.user.login", "issue.url", "repository.name", "repository.open_issues_count"  as axn,  id, issue_num, title, state, created_date, updatedAt, closedAt, body, user, url, repo_name, repoOpenIssueCnt
```
### Use Cases:
Commits Over Time, Issue opened in last 24 Hours, Issues Opened, Closed and Reopened by Repository, Issues Opened, Closed Over Time, Open Issues, Open Pull Requests, Pull Requests opened in last 24 Hours, Pull Requests Opened Over Time, Still Opened Pull Requests, Top 10 Users by Commit



## Parser:
```
| json "action", "pull_request.state", "pull_request.title", "pull_request.body", "pull_request.created_at","pull_request.updated_at", "pull_request.user.login", "repository.full_name", "pull_request.merged", "pull_request.html_url" as  action, pull_req_state, title, body, created_time, updated_time, user, repo_name, merge,url
| parse regex field=repo_name "^\S+\/(?<repo>\S+)$"
```
### Use Cases:
Issue opened in last 24 Hours, Pull Requests opened in last 24 Hours



## Parser:
```
| json "action", "pull_request.state", "pull_request.title", "pull_request.body", "pull_request.created_at","pull_request.updated_at", "pull_request.user.login", "repository.name" as action, pull_req_state, tittle, body, created_time, updated_time, user, repo_name
```
### Use Cases:
Commits by Repository, Commits Over Time, Issue opened in last 24 Hours, Issues Opened, Closed and Reopened by Repository, Issues Opened, Closed Over Time, Open Issues, Open Pull Requests, Pull Requests Opened by Repository, Pull Requests opened in last 24 Hours, Pull Requests Opened Over Time, Still Opened Pull Requests, Top 10 Users by Commit



## Parser:
```
| json "action", "pull_request.state", "pull_request.title", "pull_request.body", "pull_request.created_at","pull_request.updated_at", "pull_request.user.login", "repository.name","pull_request.merged", "pull_request.changed_files", "number" as action, pull_req_state, title, body, created_time, updated_time, user, repo_name, merge, changed_files, id
```
### Use Cases:
Commits by Repository, Commits by User, Commits Over Time, File Type Added by User, Files Added per Branch, Files Changed per Pull Request, Fork Count by Repository Over Time, Issue opened in last 24 Hours, Issues Opened, Closed and Reopened by Repository, Issues Opened, Closed Over Time, Members Added, Removed, Open Issues, Open Pull Requests, Private Repositories Made Public, Pull Requests Opened by Repository, Pull Requests opened in last 24 Hours, Pull Requests Opened Over Time, Repositories Created, Still Opened Pull Requests, Teams Added to Repository, Top 10 Users by Commit



## Parser:
```
| json "action", "pull_request.title", "number", "pull_request.created_at", "pull_request.user.login", "repository.name" as action, title, id, created_time, user, repo_name
```
### Use Cases:
Commits Over Time, Issue opened in last 24 Hours, Issues Opened, Closed and Reopened by Repository, Issues Opened, Closed Over Time, Open Pull Requests, Pull Requests opened in last 24 Hours, Still Opened Pull Requests, Top 10 Users by Commit



## Parser:
```
| json "action", "pull_request.title", "number", "pull_request.created_at","pull_request.user.login", "repository.name", "pull_request._links.html.href" as action, title, id, created_time, user, repo_name, review_url
```
### Use Cases:
Issue opened in last 24 Hours, Pull Requests opened in last 24 Hours, Still Opened Pull Requests



## Parser:
```
| Json "action", "scope", "member.login", "member.id", "member.type",  "team.name", "team.permission", "organization.login" as action, scope, member_name, member_id, member_type, team_name, team_permission, org_login
```
### Use Cases:
Commits by Repository, Commits Over Time, Issue opened in last 24 Hours, Issues Opened, Closed and Reopened by Repository, Issues Opened, Closed Over Time, Members Added, Removed, Open Issues, Open Pull Requests, Pull Requests Opened by Repository, Pull Requests opened in last 24 Hours, Pull Requests Opened Over Time, Still Opened Pull Requests, Top 10 Users by Commit



## Parser:
```
| json "comment.user.login","comment.body", "comment.created_at", "pull_request.id", "pull_request.title", "repository.name" as user, body, created_at, id, title, repo_name
```
### Use Cases:
Commits by Repository, Commits by User, Commits Over Time, File Type Added by User, Files Added per Branch, Files Changed per Pull Request, Fork Count by Repository Over Time, Issue opened in last 24 Hours, Issues Opened, Closed and Reopened by Repository, Issues Opened, Closed Over Time, Members Added, Removed, Open Issues, Open Pull Requests, Private Repositories Made Public, Pull Requests Opened by Repository, Pull Requests opened in last 24 Hours, Pull Requests Opened Over Time, Repositories Created, Review Comments by User, Still Opened Pull Requests, Teams Added to Repository, Top 10 Users by Commit



## Parser:
```
| json "commits[*].added[*]", "pusher.name",  "repository.name" as  files_added, user, repo_name
| parse regex field=files_added "\.(?<file_type>[\w]+)[\",|\"]" multi
```
### Use Cases:
Commits by Repository, Commits Over Time, File Type Added by User, Files Added per Branch, Fork Count by Repository Over Time, Issue opened in last 24 Hours, Issues Opened, Closed and Reopened by Repository, Issues Opened, Closed Over Time, Members Added, Removed, Open Issues, Open Pull Requests, Private Repositories Made Public, Pull Requests Opened by Repository, Pull Requests opened in last 24 Hours, Pull Requests Opened Over Time, Repositories Created, Still Opened Pull Requests, Teams Added to Repository, Top 10 Users by Commit



## Parser:
```
| json "ref", "commits[*].added[*]", "repository.name", "pusher.name" as branch, files, repo_name, user
| parse regex field=branch "^\S+\/\S+\/(?<branch_name>\S+)$"
```
### Use Cases:
Commits by Repository, Commits Over Time, Files Added per Branch, Fork Count by Repository Over Time, Issue opened in last 24 Hours, Issues Opened, Closed and Reopened by Repository, Issues Opened, Closed Over Time, Members Added, Removed, Open Issues, Open Pull Requests, Private Repositories Made Public, Pull Requests Opened by Repository, Pull Requests opened in last 24 Hours, Pull Requests Opened Over Time, Repositories Created, Still Opened Pull Requests, Teams Added to Repository, Top 10 Users by Commit



## Parser:
```
| json "ref", "commits[0].timestamp", "commits[*].distinct[*]" ,"pusher.name",  "repository.name" as ref, commit_time, commits ,user, repo_name
```
### Use Cases:
Commits by Repository, Commits by User, Commits Over Time, File Type Added by User, Files Added per Branch, Fork Count by Repository Over Time, Issue opened in last 24 Hours, Issues Opened, Closed and Reopened by Repository, Issues Opened, Closed Over Time, Members Added, Removed, Open Issues, Open Pull Requests, Private Repositories Made Public, Pull Requests Opened by Repository, Pull Requests opened in last 24 Hours, Pull Requests Opened Over Time, Repositories Created, Still Opened Pull Requests, Teams Added to Repository, Top 10 Users by Commit



## Parser:
```
| json "repository.name", "sender.login", "repository.private" as rep_name, sender_login, private
```
### Use Cases:
Commits by Repository, Commits Over Time, Issue opened in last 24 Hours, Issues Opened, Closed and Reopened by Repository, Issues Opened, Closed Over Time, Members Added, Removed, Open Issues, Open Pull Requests, Pull Requests Opened by Repository, Pull Requests opened in last 24 Hours, Pull Requests Opened Over Time, Repositories Created, Still Opened Pull Requests, Top 10 Users by Commit



## Parser:
```
| json "repository.name", "sender.login", "repository.private","repository.owner.login" as repo_name, sender_login, private, owner_login
```
### Use Cases:
Commits by Repository, Commits Over Time, Issue opened in last 24 Hours, Issues Opened, Closed and Reopened by Repository, Issues Opened, Closed Over Time, Members Added, Removed, Open Issues, Open Pull Requests, Private Repositories Made Public, Pull Requests Opened by Repository, Pull Requests opened in last 24 Hours, Pull Requests Opened Over Time, Repositories Created, Still Opened Pull Requests, Top 10 Users by Commit



## Parser:
```
| json "team.name", "team.permission", "repository.name" as team_name, team_permission, repo_name
```
### Use Cases:
Commits by Repository, Commits Over Time, Issue opened in last 24 Hours, Issues Opened, Closed and Reopened by Repository, Issues Opened, Closed Over Time, Members Added, Removed, Open Issues, Open Pull Requests, Private Repositories Made Public, Pull Requests Opened by Repository, Pull Requests opened in last 24 Hours, Pull Requests Opened Over Time, Repositories Created, Still Opened Pull Requests, Teams Added to Repository, Top 10 Users by Commit


