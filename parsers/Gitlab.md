# Parsers For Gitlab

## Parser:
```
|  parse regex field=group "(?<group>.+)\/.+"
 
```
### Use Cases:
Added Files, Average Build Duration, Avg Duration to Merge Merge Requests by Project, Avg Duration to Merge Merge Requests by Repository, Avg Time to Close Issues by Project, Avg Time to Close Issues by Repository, Build Duration (in sec)  by Build Name, Build Duration (in sec)  by Project, Build Duration (in sec)  by Stage Name, Build Duration (in sec) by Repository, Build Duration (in seconds), Builds  By Status, Builds Failed, Builds Over Time, Builds Status by Repository, Builds Successful, Commits Summary, Deployments by state, Deployments Failed, Deployments Over Time, Deployments Status by Project, Deployments Successful, Issues by Label, Issues by Label Over Time, Issues by Severity, Issues by Severity Over Time, Issues by State, Issues Closed, Issues Opened, Issues Opened Vs Closed, Issues Reopened, Last 10 Closed Merge Requests, Last 10 Open Merge Requests, Last 10 Opened and Unassigned Merge Requests, Last 10 ReOpened Merge Requests, Last 10 Review Comments on Merge Requests, Last 15 Failed Builds, ‎Last 15 Failed Deployments, Last 15 Opened and Unassigned Issues, Last 15 Opened Issues, Last 15 Reopened Issues, Last 15 Successful Builds, ‎Last 15 Successful Deployments, Last 20 Builds Summary, ‎Last 20 Deployments‎ Summary, Last 20 Issues Summary, Last 20 Merge Requests Summary, Merge Requests by Source Branch to Target Branch, Merge Requests by State, Merge Requests by Target Branch, Merge Requests Closed, Merge Requests Merged, Merge Requests Opened, Merge Requests Opened and Merged by Repository, Merged Merge Requests by Assignee Name, Modified Files, One Day Comparison, Open Issues by Assignee, Open Issues by Project, Open Issues by Repository, Opened Merge Requests by Creators, Opened Merge Requests by Project, Opened Merge Requests by Repository, Outlier of Failed Deployments, Outlier on Failed Builds, Projects with Environment  by Failed Deployments, Removed Files, Top 10 Merge Requests by Time taken to Merge (in hrs), Top 15 Issues by Time taken to Close, Top Slowest Build Stages, Total number of Commits by branch, Total number of Commits by Project, Total number of Commits by Repository, Total number of Commits by User



## Parser:
```
|  parse regex field=group "(?<group>.+)\/.+"
| parse regex field=assignees_name "\"(?<assignee_name>[^\"]+)\"" multi
 
```
### Use Cases:
Added Files, Average Build Duration, Avg Duration to Merge Merge Requests by Project, Avg Duration to Merge Merge Requests by Repository, Avg Time to Close Issues by Project, Avg Time to Close Issues by Repository, Avg Time to Merge Merge Requests by Assignees, Build Duration (in sec)  by Build Name, Build Duration (in sec)  by Project, Build Duration (in sec)  by Stage Name, Build Duration (in sec) by Repository, Build Duration (in seconds), Builds  By Status, Builds Failed, Builds Over Time, Builds Status by Repository, Builds Successful, Commits Summary, Deployments by state, Deployments Failed, Deployments Over Time, Deployments Status by Project, Deployments Successful, Issues by Label, Issues by Label Over Time, Issues by Severity, Issues by Severity Over Time, Issues by State, Issues Closed, Issues Opened, Issues Opened Vs Closed, Issues Reopened, Last 10 Closed Merge Requests, Last 10 Open Merge Requests, Last 10 Opened and Unassigned Merge Requests, Last 10 ReOpened Merge Requests, Last 10 Review Comments on Merge Requests, Last 15 Failed Builds, ‎Last 15 Failed Deployments, Last 15 Opened and Unassigned Issues, Last 15 Opened Issues, Last 15 Reopened Issues, Last 15 Successful Builds, ‎Last 15 Successful Deployments, Last 20 Builds Summary, ‎Last 20 Deployments‎ Summary, Last 20 Issues Summary, Last 20 Merge Requests Summary, Merge Requests by Source Branch to Target Branch, Merge Requests by State, Merge Requests by Target Branch, Merge Requests Closed, Merge Requests Merged, Merge Requests Opened, Merge Requests Opened and Merged by Repository, Merged Merge Requests by Assignee Name, Modified Files, One Day Comparison, Open Issues by Assignee, Open Issues by Project, Open Issues by Repository, Opened Merge Requests by Creators, Opened Merge Requests by Project, Opened Merge Requests by Repository, Outlier of Failed Deployments, Outlier on Failed Builds, Projects with Environment  by Failed Deployments, Removed Files, Top 10 Merge Requests by Time taken to Merge (in hrs), Top 15 Issues by Time taken to Close, Top Slowest Build Stages, Total number of Commits by branch, Total number of Commits by Project, Total number of Commits by Repository, Total number of Commits by User



## Parser:
```
|  parse regex field=group "(?<group>.+)\/.+" 
 
```
### Use Cases:
Added Files, Average Build Duration, Avg Duration to Merge Merge Requests by Repository, Avg Time to Close Issues by Project, Avg Time to Close Issues by Repository, Build Duration (in sec)  by Build Name, Build Duration (in sec)  by Project, Build Duration (in sec)  by Stage Name, Build Duration (in sec) by Repository, Build Duration (in seconds), Builds  By Status, Builds Failed, Builds Over Time, Builds Status by Repository, Builds Successful, Commits Summary, Deployments by state, Deployments Failed, Deployments Over Time, Deployments Status by Project, Deployments Successful, Issues by Label, Issues by Label Over Time, Issues by Severity, Issues by Severity Over Time, Issues by State, Issues Closed, Issues Opened, Issues Opened Vs Closed, Issues Reopened, Last 10 Closed Merge Requests, Last 10 Open Merge Requests, Last 10 Opened and Unassigned Merge Requests, Last 10 ReOpened Merge Requests, Last 10 Review Comments on Merge Requests, Last 15 Failed Builds, ‎Last 15 Failed Deployments, Last 15 Opened and Unassigned Issues, Last 15 Opened Issues, Last 15 Reopened Issues, Last 15 Successful Builds, ‎Last 15 Successful Deployments, Last 20 Builds Summary, ‎Last 20 Deployments‎ Summary, Last 20 Issues Summary, Last 20 Merge Requests Summary, Merge Requests by Source Branch to Target Branch, Merge Requests by State, Merge Requests by Target Branch, Merge Requests Closed, Merge Requests Merged, Merge Requests Opened, Merge Requests Opened and Merged by Repository, Merged Merge Requests by Assignee Name, Modified Files, One Day Comparison, Open Issues by Assignee, Open Issues by Project, Open Issues by Repository, Opened Merge Requests by Creators, Opened Merge Requests by Project, Opened Merge Requests by Repository, Outlier of Failed Deployments, Outlier on Failed Builds, Projects with Environment  by Failed Deployments, Removed Files, Top 10 Merge Requests by Time taken to Merge (in hrs), Top 15 Issues by Time taken to Close, Top Slowest Build Stages, Total number of Commits by branch, Total number of Commits by Project, Total number of Commits by Repository, Total number of Commits by User



## Parser:
```
|  parse regex field=group "(?<group>.+)\/.+" 
| parse regex field=assignees_name "\"(?<assignee_name>[^\"]+)\"" multi
 
```
### Use Cases:
Added Files, Average Build Duration, Avg Time to Close Issues by Project, Avg Time to Close Issues by Repository, Build Duration (in sec)  by Build Name, Build Duration (in sec)  by Project, Build Duration (in sec)  by Stage Name, Build Duration (in sec) by Repository, Build Duration (in seconds), Builds  By Status, Builds Failed, Builds Over Time, Builds Status by Repository, Builds Successful, Commits Summary, Deployments by state, Deployments Failed, Deployments Over Time, Deployments Status by Project, Deployments Successful, Issues by Label, Issues by Label Over Time, Issues by Severity, Issues by Severity Over Time, Issues by State, Issues Closed, Issues Opened, Issues Opened Vs Closed, Issues Reopened, Last 10 Closed Merge Requests, Last 10 Open Merge Requests, Last 10 Opened and Unassigned Merge Requests, Last 10 ReOpened Merge Requests, Last 10 Review Comments on Merge Requests, Last 15 Failed Builds, ‎Last 15 Failed Deployments, Last 15 Opened and Unassigned Issues, Last 15 Opened Issues, Last 15 Reopened Issues, Last 15 Successful Builds, ‎Last 15 Successful Deployments, Last 20 Builds Summary, ‎Last 20 Deployments‎ Summary, Last 20 Issues Summary, Last 20 Merge Requests Summary, Merge Requests by Source Branch to Target Branch, Merge Requests by State, Merge Requests by Target Branch, Merge Requests Closed, Merge Requests Merged, Merge Requests Opened, Merge Requests Opened and Merged by Repository, Merged Merge Requests by Assignee Name, Modified Files, One Day Comparison, Open Issues by Assignee, Open Issues by Project, Open Issues by Repository, Opened Merge Requests by Creators, Opened Merge Requests by Project, Opened Merge Requests by Repository, Outlier of Failed Deployments, Outlier on Failed Builds, Projects with Environment  by Failed Deployments, Removed Files, Top 15 Issues by Time taken to Close, Top Slowest Build Stages, Total number of Commits by branch, Total number of Commits by Project, Total number of Commits by Repository, Total number of Commits by User



## Parser:
```
|  parse regex field=group "(?<group>.+)\/.+" 
| parse regex field=branch_path ".*?\/.*?\/(?<branch>.*)"
 
```
### Use Cases:
Added Files, Average Build Duration, Build Duration (in sec)  by Build Name, Build Duration (in sec)  by Project, Build Duration (in sec)  by Stage Name, Build Duration (in sec) by Repository, Build Duration (in seconds), Builds  By Status, Builds Failed, Builds Over Time, Builds Status by Repository, Builds Successful, Commits Summary, Last 15 Failed Builds, Last 15 Successful Builds, Last 20 Builds Summary, Modified Files, Outlier on Failed Builds, Removed Files, Top Slowest Build Stages, Total number of Commits by branch, Total number of Commits by Project, Total number of Commits by Repository, Total number of Commits by User



## Parser:
```
| json "build_status" as build_status
| json "build_created_at","build_id","build_name","build_status" ,"build_stage","build_duration","user.name","repository.name","commit.message" , "repository.homepage","commit.sha","build_failure_reason","project_name"as build_date_time,build_id , build_name ,build_status,build_stage,build_duration,user, repo_name,build_commit_message , homepage,commit_id,build_failure_reason,project nodrop
| split homepage delim='/' extract 4 as group
 
```
### Use Cases:
Average Build Duration, Build Duration (in sec)  by Build Name, Build Duration (in sec)  by Project, Build Duration (in sec)  by Stage Name, Build Duration (in sec) by Repository, Build Duration (in seconds), Builds  By Status, Builds Failed, Builds Over Time, Builds Status by Repository, Builds Successful, Last 15 Failed Builds, Last 15 Successful Builds, Last 20 Builds Summary, Outlier on Failed Builds, Top Slowest Build Stages



## Parser:
```
| json "build_status" as build_status
| json "build_created_at","build_id","build_name","build_status" ,"build_stage","user.name","repository.name","commit.message" , "repository.homepage","commit.sha","build_duration","project_name"as build_date_time,build_id , build_name ,build_status,build_stage,user, repo_name,build_commit_message , homepage,commit_id,build_duration,project nodrop
 
```
### Use Cases:
Added Files, Average Build Duration, Average Build Duration (seconds) by Project, Avg Duration to Merge Merge Requests by Project, Avg Duration to Merge Merge Requests by Repository, Avg Time to Close Issues by Project, Avg Time to Close Issues by Repository, Avg Time to Merge Merge Requests by Assignees, Build Duration (in sec)  by Build Name, Build Duration (in sec)  by Project, Build Duration (in sec)  by Stage Name, Build Duration (in sec) by Repository, Build Duration (in seconds), Builds  By Status, Builds Failed, Builds Over Time, Builds Status by Repository, Builds Successful, Commits Summary, Deployments by state, Deployments Failed, Deployments Over Time, Deployments Status by Project, Deployments Successful, Failed Builds by Project, Issues by Label, Issues by Label Over Time, Issues by Severity, Issues by Severity Over Time, Issues by State, Issues Closed, Issues Opened, Issues Opened Vs Closed, Issues Reopened, Last 10 Closed Merge Requests, Last 10 Open Merge Requests, Last 10 Opened and Unassigned Merge Requests, Last 10 ReOpened Merge Requests, Last 10 Review Comments on Merge Requests, Last 15 Failed Builds, ‎Last 15 Failed Deployments, Last 15 Opened and Unassigned Issues, Last 15 Opened Issues, Last 15 Reopened Issues, Last 15 Successful Builds, ‎Last 15 Successful Deployments, Last 20 Builds Summary, ‎Last 20 Deployments‎ Summary, Last 20 Issues Summary, Last 20 Merge Requests Summary, Merge Requests by Source Branch to Target Branch, Merge Requests by State, Merge Requests by Target Branch, Merge Requests Closed, Merge Requests Merged, Merge Requests Opened, Merge Requests Opened and Merged by Repository, Merged Merge Requests by Assignee Name, Modified Files, One Day Comparison, Open Issues by Assignee, Open Issues by Project, Open Issues by Repository, Opened Merge Requests by Creators, Opened Merge Requests by Project, Opened Merge Requests by Repository, Outlier of Failed Deployments, Outlier on Failed Builds, Projects with Environment  by Failed Deployments, Removed Files, Top 10 Merge Requests by Time taken to Merge (in hrs), Top 15 Issues by Time taken to Close, Top Slowest Build Stages, Total number of Commits by branch, Total number of Commits by Project, Total number of Commits by Repository, Total number of Commits by User



## Parser:
```
| json "build_status" as build_status
| json "build_created_at","build_id","build_name","build_status" ,"build_stage","user.name","repository.name","commit.message" , "repository.homepage","commit.sha","build_failure_reason","project_name" as build_date_time,build_id , build_name ,build_status,build_stage,user, repo_name,build_commit_message , homepage,commit_id,build_failure_reason,project nodrop
| split homepage delim='/' extract 4 as group 
 
```
### Use Cases:
Builds Failed, Last 15 Failed Builds, Last 15 Successful Builds



## Parser:
```
| json "build_status" as build_status
| json "build_created_at","build_id","build_name","build_status" ,"build_stage","user.name","repository.name","commit.message" , "repository.homepage","commit.sha","build_failure_reason","project_name"as build_date_time,build_id , build_name ,build_status,build_stage,user, repo_name,build_commit_message , homepage,commit_id,build_failure_reason,project
 
```
### Use Cases:
Added Files, Average Build Duration, Avg Duration to Merge Merge Requests by Project, Avg Duration to Merge Merge Requests by Repository, Avg Time to Close Issues by Project, Avg Time to Close Issues by Repository, Avg Time to Merge Merge Requests by Assignees, Build Duration (in sec)  by Build Name, Build Duration (in sec)  by Project, Build Duration (in sec)  by Stage Name, Build Duration (in sec) by Repository, Build Duration (in seconds), Builds  By Status, Builds Failed, Builds Over Time, Builds Status by Repository, Builds Successful, Commits Summary, Deployments by state, Deployments Failed, Deployments Over Time, Deployments Status by Project, Deployments Successful, Failed Builds by Project, Issues by Label, Issues by Label Over Time, Issues by Severity, Issues by Severity Over Time, Issues by State, Issues Closed, Issues Opened, Issues Opened Vs Closed, Issues Reopened, Last 10 Closed Merge Requests, Last 10 Open Merge Requests, Last 10 Opened and Unassigned Merge Requests, Last 10 ReOpened Merge Requests, Last 10 Review Comments on Merge Requests, Last 15 Failed Builds, ‎Last 15 Failed Deployments, Last 15 Opened and Unassigned Issues, Last 15 Opened Issues, Last 15 Reopened Issues, Last 15 Successful Builds, ‎Last 15 Successful Deployments, Last 20 Builds Summary, ‎Last 20 Deployments‎ Summary, Last 20 Issues Summary, Last 20 Merge Requests Summary, Merge Requests by Source Branch to Target Branch, Merge Requests by State, Merge Requests by Target Branch, Merge Requests Closed, Merge Requests Merged, Merge Requests Opened, Merge Requests Opened and Merged by Repository, Merged Merge Requests by Assignee Name, Modified Files, One Day Comparison, Open Issues by Assignee, Open Issues by Project, Open Issues by Repository, Opened Merge Requests by Creators, Opened Merge Requests by Project, Opened Merge Requests by Repository, Outlier of Failed Deployments, Outlier on Failed Builds, Projects with Environment  by Failed Deployments, Removed Files, Top 10 Merge Requests by Time taken to Merge (in hrs), Top 15 Issues by Time taken to Close, Top Slowest Build Stages, Total number of Commits by branch, Total number of Commits by Project, Total number of Commits by Repository, Total number of Commits by User



## Parser:
```
| json "build_status" as build_status
| json "build_created_at","build_id","build_name","build_status" ,"build_stage","user.name","repository.name","commit.message" , "repository.homepage","commit.sha","build_failure_reason","project_name"as build_date_time,build_id , build_name ,build_status,build_stage,user, repo_name,build_commit_message , homepage,commit_id,build_failure_reason,project nodrop
| split homepage delim='/' extract 4 as group
 
```
### Use Cases:
Average Build Duration, Builds Failed, Builds Over Time, Builds Status by Repository, Builds Successful, Last 15 Failed Builds, Last 15 Successful Builds, Top Slowest Build Stages



## Parser:
```
| json "build_status" as build_status
| json "build_created_at","build_id","build_name","build_status" ,"build_stage","user.name","repository.name","commit.message" , "repository.homepage","commit.sha","project_name"as build_date_time,build_id , build_name ,build_status,build_stage,user, repo_name,build_commit_message , homepage,commit_id,project
 
```
### Use Cases:
Added Files, Average Build Duration, Avg Duration to Merge Merge Requests by Project, Avg Duration to Merge Merge Requests by Repository, Avg Time to Close Issues by Project, Avg Time to Close Issues by Repository, Avg Time to Merge Merge Requests by Assignees, Build Duration (in sec)  by Build Name, Build Duration (in sec)  by Project, Build Duration (in sec)  by Stage Name, Build Duration (in sec) by Repository, Build Duration (in seconds), Builds  By Status, Builds Failed, Builds Over Time, Builds Status by Repository, Builds Successful, Commits Summary, Deployments by state, Deployments Failed, Deployments Over Time, Deployments Status by Project, Deployments Successful, Issues by Label, Issues by Label Over Time, Issues by Severity, Issues by Severity Over Time, Issues by State, Issues Closed, Issues Opened, Issues Opened Vs Closed, Issues Reopened, Last 10 Closed Merge Requests, Last 10 Open Merge Requests, Last 10 Opened and Unassigned Merge Requests, Last 10 ReOpened Merge Requests, Last 10 Review Comments on Merge Requests, Last 15 Failed Builds, ‎Last 15 Failed Deployments, Last 15 Opened and Unassigned Issues, Last 15 Opened Issues, Last 15 Reopened Issues, Last 15 Successful Builds, ‎Last 15 Successful Deployments, Last 20 Builds Summary, ‎Last 20 Deployments‎ Summary, Last 20 Issues Summary, Last 20 Merge Requests Summary, Merge Requests by Source Branch to Target Branch, Merge Requests by State, Merge Requests by Target Branch, Merge Requests Closed, Merge Requests Merged, Merge Requests Opened, Merge Requests Opened and Merged by Repository, Merged Merge Requests by Assignee Name, Modified Files, One Day Comparison, Open Issues by Assignee, Open Issues by Project, Open Issues by Repository, Opened Merge Requests by Creators, Opened Merge Requests by Project, Opened Merge Requests by Repository, Outlier of Failed Deployments, Outlier on Failed Builds, Projects with Environment  by Failed Deployments, Removed Files, Top 10 Merge Requests by Time taken to Merge (in hrs), Top 15 Issues by Time taken to Close, Top Slowest Build Stages, Total number of Commits by branch, Total number of Commits by Project, Total number of Commits by Repository, Total number of Commits by User



## Parser:
```
| json "object_attributes.id","object_attributes.ref","object_attributes.sha","object_attributes.stages","object_attributes.created_at","object_attributes.finished_at","object_attributes.duration","user.name","project.name","builds[*].stage","builds[*].name","builds[*].status","builds","project.web_url","commit.url","project.path_with_namespace"  as pipeline_id,branch,commit_id,pipeline_stages,created_date_time,finished_date_time,duration_in_sec,user,project,jobs_stage
| parse regex field=group "(?<group>.+)\/.+"
 
```
### Use Cases:
Added Files, Average Build Duration, Average Build Duration (seconds) by Project, Average Pipelines Duration, Avg Duration to Merge Merge Requests by Project, Avg Duration to Merge Merge Requests by Repository, Avg Pipleline Duration (in sec) by Project, Avg Time to Close Issues by Project, Avg Time to Close Issues by Repository, Avg Time to Merge Merge Requests by Assignees, Avg. Pipelines Duration (sec) Project, Avg. Time (hrs) Taken to Close Issue by Project, Build Duration (in sec)  by Build Name, Build Duration (in sec)  by Project, Build Duration (in sec)  by Stage Name, Build Duration (in sec) by Repository, Build Duration (in seconds), Builds  By Status, Builds Failed, Builds Over Time, Builds Status by Repository, Builds Successful, Commits Summary, Deployments by state, Deployments Failed, Deployments Over Time, Deployments Status by Project, Deployments Successful, Failed Builds by Project, Failed Deployments  by Project, Failed Deployments by Environment, Failed Pipelines by Project, Issues by Label, Issues by Label Over Time, Issues by Severity, Issues by Severity Over Time, Issues by State, Issues Closed, Issues Opened, Issues Opened Vs Closed, Issues Reopened, Last 10 Closed Merge Requests, Last 10 Failed Pipelines, Last 10 Open Merge Requests, Last 10 Opened and Unassigned Merge Requests, Last 10 ReOpened Merge Requests, Last 10 Review Comments on Merge Requests, Last 15 Failed Builds, ‎Last 15 Failed Deployments, Last 15 Opened and Unassigned Issues, Last 15 Opened Issues, Last 15 Reopened Issues, Last 15 Successful Builds, ‎Last 15 Successful Deployments, Last 20 Builds Summary, ‎Last 20 Deployments‎ Summary, Last 20 Issues Summary, Last 20 Merge Requests Summary, Last 20 Pipeline Summary, Merge Requests by Source Branch to Target Branch, Merge Requests by State, Merge Requests by Target Branch, Merge Requests Closed, Merge Requests Merged, Merge Requests Opened, Merge Requests Opened and Merged by Repository, Merged Merge Requests by Assignee Name, Modified Files, One Day Comparison, Open Issues by Assignee, Open Issues by Project, Open Issues by Repository, Opened Merge Requests by Creators, Opened Merge Requests by Project, Opened Merge Requests by Repository, Outlier of Failed Deployments, Outlier on Failed Builds, Outlier on Failed Pipelines, Pipeline  by Status, Pipelines  Over Time, Pipelines Failed, Pipelines Successful, Projects with Environment  by Failed Deployments, Removed Files, Top 10 Merge Requests by Time taken to Merge (in hrs), Top 10 Sowest Pipeline, Top 15 Issues by Time taken to Close, Top Slowest Build Stages, Total number of Commits by branch, Total number of Commits by Project, Total number of Commits by Repository, Total number of Commits by User



## Parser:
```
| json "object_attributes.id","object_attributes.ref","object_attributes.sha","object_attributes.stages","object_attributes.created_at","object_attributes.finished_at","object_attributes.duration","user.name","project.name","builds[*].stage","builds[*].name","builds[*].status","builds","project.web_url","commit.url","project.path_with_namespace"  as pipeline_id,branch,commit_id,pipeline_stages,created_date_time,finished_date_time,duration_in_sec,user,project,jobs_stage,jobs_name,jobs_status,jobs,web_url,commit_url,group nodrop
|  parse regex field=group "(?<group>.+)\/.+"
 
```
### Use Cases:
Added Files, Average Build Duration, Average Build Duration (seconds) by Project, Avg Duration to Merge Merge Requests by Project, Avg Duration to Merge Merge Requests by Repository, Avg Pipleline Duration (in sec) by Project, Avg Time to Close Issues by Project, Avg Time to Close Issues by Repository, Avg Time to Merge Merge Requests by Assignees, Avg. Pipelines Duration (sec) Project, Avg. Time (hrs) Taken to Close Issue by Project, Build Duration (in sec)  by Build Name, Build Duration (in sec)  by Project, Build Duration (in sec)  by Stage Name, Build Duration (in sec) by Repository, Build Duration (in seconds), Builds  By Status, Builds Failed, Builds Over Time, Builds Status by Repository, Builds Successful, Commits Summary, Deployments by state, Deployments Failed, Deployments Over Time, Deployments Status by Project, Deployments Successful, Failed Builds by Project, Failed Deployments  by Project, Failed Deployments by Environment, Failed Pipelines by Project, Issues by Label, Issues by Label Over Time, Issues by Severity, Issues by Severity Over Time, Issues by State, Issues Closed, Issues Opened, Issues Opened Vs Closed, Issues Reopened, Last 10 Closed Merge Requests, Last 10 Failed Pipelines, Last 10 Open Merge Requests, Last 10 Opened and Unassigned Merge Requests, Last 10 ReOpened Merge Requests, Last 10 Review Comments on Merge Requests, Last 15 Failed Builds, ‎Last 15 Failed Deployments, Last 15 Opened and Unassigned Issues, Last 15 Opened Issues, Last 15 Reopened Issues, Last 15 Successful Builds, ‎Last 15 Successful Deployments, Last 20 Builds Summary, ‎Last 20 Deployments‎ Summary, Last 20 Issues Summary, Last 20 Merge Requests Summary, Last 20 Pipeline Summary, Merge Requests by Source Branch to Target Branch, Merge Requests by State, Merge Requests by Target Branch, Merge Requests Closed, Merge Requests Merged, Merge Requests Opened, Merge Requests Opened and Merged by Repository, Merged Merge Requests by Assignee Name, Modified Files, One Day Comparison, Open Issues by Assignee, Open Issues by Project, Open Issues by Repository, Opened Merge Requests by Creators, Opened Merge Requests by Project, Opened Merge Requests by Repository, Outlier of Failed Deployments, Outlier on Failed Builds, Outlier on Failed Pipelines, Pipeline  by Status, Pipelines Failed, Pipelines Successful, Projects with Environment  by Failed Deployments, Removed Files, Top 10 Merge Requests by Time taken to Merge (in hrs), Top 10 Sowest Pipeline, Top 15 Issues by Time taken to Close, Top Slowest Build Stages, Total number of Commits by branch, Total number of Commits by Project, Total number of Commits by Repository, Total number of Commits by User



## Parser:
```
| json "object_attributes.id","object_attributes.ref","object_attributes.sha","object_attributes.stages","object_attributes.created_at","object_attributes.finished_at","object_attributes.duration","user.name","project.name","builds[*].stage","builds[*].name","builds[*].status","builds","project.web_url","commit.url","project.path_with_namespace"  as pipeline_id,branch,commit_id,pipeline_stages,created_date_time,finished_date_time,duration_in_sec,user,project,jobs_stage,jobs_name,jobs_status,jobs,web_url,commit_url,group nodrop
|  parse regex field=group "(?<group>.+)\/.+" 
 
```
### Use Cases:
Added Files, Average Build Duration, Average Build Duration (seconds) by Project, Avg Duration to Merge Merge Requests by Project, Avg Duration to Merge Merge Requests by Repository, Avg Pipleline Duration (in sec) by Project, Avg Time to Close Issues by Project, Avg Time to Close Issues by Repository, Avg Time to Merge Merge Requests by Assignees, Avg. Pipelines Duration (sec) Project, Avg. Time (hrs) Taken to Close Issue by Project, Build Duration (in sec)  by Build Name, Build Duration (in sec)  by Project, Build Duration (in sec)  by Stage Name, Build Duration (in sec) by Repository, Build Duration (in seconds), Builds  By Status, Builds Failed, Builds Over Time, Builds Status by Repository, Builds Successful, Commits Summary, Deployments by state, Deployments Failed, Deployments Over Time, Deployments Status by Project, Deployments Successful, Failed Builds by Project, Failed Deployments  by Project, Failed Deployments by Environment, Failed Pipelines by Project, Issues by Label, Issues by Label Over Time, Issues by Severity, Issues by Severity Over Time, Issues by State, Issues Closed, Issues Opened, Issues Opened Vs Closed, Issues Reopened, Last 10 Closed Merge Requests, Last 10 Failed Pipelines, Last 10 Open Merge Requests, Last 10 Opened and Unassigned Merge Requests, Last 10 ReOpened Merge Requests, Last 10 Review Comments on Merge Requests, Last 15 Failed Builds, ‎Last 15 Failed Deployments, Last 15 Opened and Unassigned Issues, Last 15 Opened Issues, Last 15 Reopened Issues, Last 15 Successful Builds, ‎Last 15 Successful Deployments, Last 20 Builds Summary, ‎Last 20 Deployments‎ Summary, Last 20 Issues Summary, Last 20 Merge Requests Summary, Last 20 Pipeline Summary, Merge Requests by Source Branch to Target Branch, Merge Requests by State, Merge Requests by Target Branch, Merge Requests Closed, Merge Requests Merged, Merge Requests Opened, Merge Requests Opened and Merged by Repository, Merged Merge Requests by Assignee Name, Modified Files, One Day Comparison, Open Issues by Assignee, Open Issues by Project, Open Issues by Repository, Opened Merge Requests by Creators, Opened Merge Requests by Project, Opened Merge Requests by Repository, Outlier of Failed Deployments, Outlier on Failed Builds, Outlier on Failed Pipelines, Pipeline  by Status, Pipelines Failed, Pipelines Successful, Projects with Environment  by Failed Deployments, Removed Files, Top 10 Merge Requests by Time taken to Merge (in hrs), Top 10 Sowest Pipeline, Top 15 Issues by Time taken to Close, Top Slowest Build Stages, Total number of Commits by branch, Total number of Commits by Project, Total number of Commits by Repository, Total number of Commits by User



## Parser:
```
| json "object_attributes.id","object_attributes.ref","object_attributes.sha","object_attributes.stages","object_attributes.created_at","object_attributes.finished_at","object_attributes.duration","user.name","project.name","builds[*].stage","builds[*].name","builds[*].status","builds","project.web_url","commit.url","project.path_with_namespace"  as pipeline_id,branch,commit_id,pipeline_stages,created_date_time,finished_date_time,duration_in_sec,user,project,jobs_stage,jobs_name,jobs_status,jobs,web_url,commit_url,group nodrop
|  parse regex field=group "(?<group>.+)\/.+" 
| parse regex field = builds "(?<json_added_blob>\{.*?(environment\"\:null}|\}\}))" multi
| json field= json_added_blob "id","stage","name","status","created_at","started_at","finished_at","duration","environment.name" as job_id,job_stage,job_name,job_status,job_created_at,job_started_at,job_finished_at,job_duration,job_enviroment
 
```
### Use Cases:
Added Files, Average Build Duration, Average Build Duration (seconds) by Project, Average Pipelines Duration, Avg Duration to Merge Merge Requests by Project, Avg Duration to Merge Merge Requests by Repository, Avg Pipleline Duration (in sec ) by Project, Avg Pipleline Duration (in sec) by Project, Avg Time to Close Issues by Project, Avg Time to Close Issues by Repository, Avg Time to Merge Merge Requests by Assignees, Avg. Pipelines Duration (sec) Project, Avg. Time (hrs) Taken to Close Issue by Project, Build Duration (in sec)  by Build Name, Build Duration (in sec)  by Project, Build Duration (in sec)  by Stage Name, Build Duration (in sec) by Repository, Build Duration (in seconds), Builds  By Status, Builds Failed, Builds Over Time, Builds Status by Repository, Builds Successful, Commits Summary, Deployments by state, Deployments Failed, Deployments Over Time, Deployments Status by Project, Deployments Successful, Failed Builds by Project, Failed Deployments  by Project, Failed Deployments by Environment, Failed Jobs by Stages, Failed Pipelines by Project, Issues by Label, Issues by Label Over Time, Issues by Severity, Issues by Severity Over Time, Issues by State, Issues Closed, Issues Opened, Issues Opened Vs Closed, Issues Reopened, Last 10 Closed Merge Requests, Last 10 Failed Pipelines, Last 10 Open Merge Requests, Last 10 Opened and Unassigned Merge Requests, Last 10 ReOpened Merge Requests, Last 10 Review Comments on Merge Requests, Last 15 Failed Builds, ‎Last 15 Failed Deployments, Last 15 Opened and Unassigned Issues, Last 15 Opened Issues, Last 15 Reopened Issues, Last 15 Successful Builds, ‎Last 15 Successful Deployments, Last 20 Builds Summary, ‎Last 20 Deployments‎ Summary, Last 20 Issues Summary, Last 20 Merge Requests Summary, Last 20 Pipeline Summary, Merge Requests by Source Branch to Target Branch, Merge Requests by State, Merge Requests by Target Branch, Merge Requests Closed, Merge Requests Merged, Merge Requests Opened, Merge Requests Opened and Merged by Repository, Merged Merge Requests by Assignee Name, Modified Files, One Day Comparison, Open Issues by Assignee, Open Issues by Project, Open Issues by Repository, Opened Merge Requests by Creators, Opened Merge Requests by Project, Opened Merge Requests by Repository, Outlier of Failed Deployments, Outlier on Failed Builds, Outlier on Failed Pipelines, Pipeline  by Status, Pipelines  Over Time, Pipelines Failed, Pipelines Successful, Pipleline Duration (in sec), Projects with Environment  by Failed Deployments, Removed Files, Top 10 Merge Requests by Time taken to Merge (in hrs), Top 10 Sowest Pipeline, Top 15 Issues by Time taken to Close, Top Slowest Build Stages, Total number of Commits by branch, Total number of Commits by Project, Total number of Commits by Repository, Total number of Commits by User



## Parser:
```
| json "object_attributes.id","object_attributes.ref","object_attributes.sha","object_attributes.stages","object_attributes.created_at","object_attributes.finished_at","object_attributes.duration","user.name","project.name","builds[*].stage","builds[*].name","builds[*].status","builds","project.web_url","commit.url","project.path_with_namespace"  as pipeline_id,branch,commit_id,pipeline_stages,created_date_time,finished_date_time,duration_in_sec,user,project,jobs_stage,jobs_name,jobs_status,jobs,web_url,commit_url,group nodrop
| parse regex field=group "(?<group>.+)\/.+"
 
```
### Use Cases:
Added Files, Average Build Duration, Average Build Duration (seconds) by Project, Avg Duration to Merge Merge Requests by Project, Avg Duration to Merge Merge Requests by Repository, Avg Time to Close Issues by Project, Avg Time to Close Issues by Repository, Avg Time to Merge Merge Requests by Assignees, Avg. Pipelines Duration (sec) Project, Avg. Time (hrs) Taken to Close Issue by Project, Build Duration (in sec)  by Build Name, Build Duration (in sec)  by Project, Build Duration (in sec)  by Stage Name, Build Duration (in sec) by Repository, Build Duration (in seconds), Builds  By Status, Builds Failed, Builds Over Time, Builds Status by Repository, Builds Successful, Commits Summary, Deployments by state, Deployments Failed, Deployments Over Time, Deployments Status by Project, Deployments Successful, Failed Builds by Project, Failed Deployments  by Project, Failed Deployments by Environment, Failed Pipelines by Project, Issues by Label, Issues by Label Over Time, Issues by Severity, Issues by Severity Over Time, Issues by State, Issues Closed, Issues Opened, Issues Opened Vs Closed, Issues Reopened, Last 10 Closed Merge Requests, Last 10 Open Merge Requests, Last 10 Opened and Unassigned Merge Requests, Last 10 ReOpened Merge Requests, Last 10 Review Comments on Merge Requests, Last 15 Failed Builds, ‎Last 15 Failed Deployments, Last 15 Opened and Unassigned Issues, Last 15 Opened Issues, Last 15 Reopened Issues, Last 15 Successful Builds, ‎Last 15 Successful Deployments, Last 20 Builds Summary, ‎Last 20 Deployments‎ Summary, Last 20 Issues Summary, Last 20 Merge Requests Summary, Last 20 Pipeline Summary, Merge Requests by Source Branch to Target Branch, Merge Requests by State, Merge Requests by Target Branch, Merge Requests Closed, Merge Requests Merged, Merge Requests Opened, Merge Requests Opened and Merged by Repository, Merged Merge Requests by Assignee Name, Modified Files, One Day Comparison, Open Issues by Assignee, Open Issues by Project, Open Issues by Repository, Opened Merge Requests by Creators, Opened Merge Requests by Project, Opened Merge Requests by Repository, Outlier of Failed Deployments, Outlier on Failed Builds, Pipeline  by Status, Pipelines Failed, Pipelines Successful, Projects with Environment  by Failed Deployments, Removed Files, Top 10 Merge Requests by Time taken to Merge (in hrs), Top 10 Sowest Pipeline, Top 15 Issues by Time taken to Close, Top Slowest Build Stages, Total number of Commits by branch, Total number of Commits by Project, Total number of Commits by Repository, Total number of Commits by User



## Parser:
```
| json "object_attributes.id","object_attributes.ref","object_attributes.sha","object_attributes.stages","object_attributes.created_at","object_attributes.finished_at","object_attributes.duration","user.name","project.name","builds[*].stage","builds[*].name","builds[*].status","builds","project.web_url","commit.url","project.path_with_namespace"  as pipeline_id,branch,commit_id,pipeline_stages,created_date_time,finished_date_time,duration_in_sec,user,project,jobs_stage,jobs_name,jobs_status,jobs,web_url,commit_url,group nodrop
| parse regex field=group "(?<group>.+)\/.+" 
 
```
### Use Cases:
Added Files, Average Build Duration, Average Build Duration (seconds) by Project, Average Pipelines Duration, Avg Duration to Merge Merge Requests by Project, Avg Duration to Merge Merge Requests by Repository, Avg Pipleline Duration (in sec) by Project, Avg Time to Close Issues by Project, Avg Time to Close Issues by Repository, Avg Time to Merge Merge Requests by Assignees, Avg. Pipelines Duration (sec) Project, Avg. Time (hrs) Taken to Close Issue by Project, Build Duration (in sec)  by Build Name, Build Duration (in sec)  by Project, Build Duration (in sec)  by Stage Name, Build Duration (in sec) by Repository, Build Duration (in seconds), Builds  By Status, Builds Failed, Builds Over Time, Builds Status by Repository, Builds Successful, Commits Summary, Deployments by state, Deployments Failed, Deployments Over Time, Deployments Status by Project, Deployments Successful, Failed Builds by Project, Failed Deployments  by Project, Failed Deployments by Environment, Failed Pipelines by Project, Issues by Label, Issues by Label Over Time, Issues by Severity, Issues by Severity Over Time, Issues by State, Issues Closed, Issues Opened, Issues Opened Vs Closed, Issues Reopened, Last 10 Closed Merge Requests, Last 10 Failed Pipelines, Last 10 Open Merge Requests, Last 10 Opened and Unassigned Merge Requests, Last 10 ReOpened Merge Requests, Last 10 Review Comments on Merge Requests, Last 15 Failed Builds, ‎Last 15 Failed Deployments, Last 15 Opened and Unassigned Issues, Last 15 Opened Issues, Last 15 Reopened Issues, Last 15 Successful Builds, ‎Last 15 Successful Deployments, Last 20 Builds Summary, ‎Last 20 Deployments‎ Summary, Last 20 Issues Summary, Last 20 Merge Requests Summary, Last 20 Pipeline Summary, Merge Requests by Source Branch to Target Branch, Merge Requests by State, Merge Requests by Target Branch, Merge Requests Closed, Merge Requests Merged, Merge Requests Opened, Merge Requests Opened and Merged by Repository, Merged Merge Requests by Assignee Name, Modified Files, One Day Comparison, Open Issues by Assignee, Open Issues by Project, Open Issues by Repository, Opened Merge Requests by Creators, Opened Merge Requests by Project, Opened Merge Requests by Repository, Outlier of Failed Deployments, Outlier on Failed Builds, Outlier on Failed Pipelines, Pipeline  by Status, Pipelines Failed, Pipelines Successful, Projects with Environment  by Failed Deployments, Removed Files, Top 10 Merge Requests by Time taken to Merge (in hrs), Top 10 Sowest Pipeline, Top 15 Issues by Time taken to Close, Top Slowest Build Stages, Total number of Commits by branch, Total number of Commits by Project, Total number of Commits by Repository, Total number of Commits by User



## Parser:
```
| json "object_attributes.id","object_attributes.ref","object_attributes.sha","object_attributes.stages","object_attributes.created_at","object_attributes.finished_at","object_attributes.duration","user.name","project.name","builds[*].stage","builds[*].name","builds[*].status","builds","project.web_url","commit.url","project.path_with_namespace"  as pipeline_id,branch,commit_id,pipeline_stages,created_date_time,finished_date_time,pipeline_duration_in_sec,user,project,jobs_stage,jobs_name,jobs_status,jobs,web_url,commit_url,group nodrop
|  parse regex field=group "(?<group>.+)\/.+" 
 
```
### Use Cases:
Added Files, Average Build Duration, Average Build Duration (seconds) by Project, Average Pipelines Duration, Avg Duration to Merge Merge Requests by Project, Avg Duration to Merge Merge Requests by Repository, Avg Pipleline Duration (in sec ) by Project, Avg Pipleline Duration (in sec) by Project, Avg Time to Close Issues by Project, Avg Time to Close Issues by Repository, Avg Time to Merge Merge Requests by Assignees, Avg. Pipelines Duration (sec) Project, Avg. Time (hrs) Taken to Close Issue by Project, Build Duration (in sec)  by Build Name, Build Duration (in sec)  by Project, Build Duration (in sec)  by Stage Name, Build Duration (in sec) by Repository, Build Duration (in seconds), Builds  By Status, Builds Failed, Builds Over Time, Builds Status by Repository, Builds Successful, Commits Summary, Deployments by state, Deployments Failed, Deployments Over Time, Deployments Status by Project, Deployments Successful, Failed Builds by Project, Failed Deployments  by Project, Failed Deployments by Environment, Failed Pipelines by Project, Issues by Label, Issues by Label Over Time, Issues by Severity, Issues by Severity Over Time, Issues by State, Issues Closed, Issues Opened, Issues Opened Vs Closed, Issues Reopened, Last 10 Closed Merge Requests, Last 10 Failed Pipelines, Last 10 Open Merge Requests, Last 10 Opened and Unassigned Merge Requests, Last 10 ReOpened Merge Requests, Last 10 Review Comments on Merge Requests, Last 15 Failed Builds, ‎Last 15 Failed Deployments, Last 15 Opened and Unassigned Issues, Last 15 Opened Issues, Last 15 Reopened Issues, Last 15 Successful Builds, ‎Last 15 Successful Deployments, Last 20 Builds Summary, ‎Last 20 Deployments‎ Summary, Last 20 Issues Summary, Last 20 Merge Requests Summary, Last 20 Pipeline Summary, Merge Requests by Source Branch to Target Branch, Merge Requests by State, Merge Requests by Target Branch, Merge Requests Closed, Merge Requests Merged, Merge Requests Opened, Merge Requests Opened and Merged by Repository, Merged Merge Requests by Assignee Name, Modified Files, One Day Comparison, Open Issues by Assignee, Open Issues by Project, Open Issues by Repository, Opened Merge Requests by Creators, Opened Merge Requests by Project, Opened Merge Requests by Repository, Outlier of Failed Deployments, Outlier on Failed Builds, Outlier on Failed Pipelines, Pipeline  by Status, Pipelines  Over Time, Pipelines Failed, Pipelines Successful, Projects with Environment  by Failed Deployments, Removed Files, Top 10 Merge Requests by Time taken to Merge (in hrs), Top 10 Sowest Pipeline, Top 15 Issues by Time taken to Close, Top Slowest Build Stages, Total number of Commits by branch, Total number of Commits by Project, Total number of Commits by Repository, Total number of Commits by User



## Parser:
```
| json "object_attributes.id","object_attributes.ref","object_attributes.sha","object_attributes.stages","object_attributes.created_at","object_attributes.finished_at","object_attributes.duration","user.name","project.name","builds[*].stage","builds[*].name","builds[*].status","builds","project.web_url","commit.url","project.path_with_namespace"  as pipeline_id,branch,commit_id,pipeline_stages,created_date_time,finished_date_time,pipeline_duration_in_sec,user,project,jobs_stage,jobs_name,jobs_status,jobs,web_url,commit_url,group nodrop
| parse regex field=group "(?<group>.+)\/.+"
 
```
### Use Cases:
Added Files, Average Build Duration, Average Build Duration (seconds) by Project, Avg Duration to Merge Merge Requests by Project, Avg Duration to Merge Merge Requests by Repository, Avg Time to Close Issues by Project, Avg Time to Close Issues by Repository, Avg Time to Merge Merge Requests by Assignees, Avg. Pipelines Duration (sec) Project, Avg. Time (hrs) Taken to Close Issue by Project, Build Duration (in sec)  by Build Name, Build Duration (in sec)  by Project, Build Duration (in sec)  by Stage Name, Build Duration (in sec) by Repository, Build Duration (in seconds), Builds  By Status, Builds Failed, Builds Over Time, Builds Status by Repository, Builds Successful, Commits Summary, Deployments by state, Deployments Failed, Deployments Over Time, Deployments Status by Project, Deployments Successful, Failed Builds by Project, Failed Deployments  by Project, Failed Deployments by Environment, Failed Pipelines by Project, Issues by Label, Issues by Label Over Time, Issues by Severity, Issues by Severity Over Time, Issues by State, Issues Closed, Issues Opened, Issues Opened Vs Closed, Issues Reopened, Last 10 Closed Merge Requests, Last 10 Open Merge Requests, Last 10 Opened and Unassigned Merge Requests, Last 10 ReOpened Merge Requests, Last 10 Review Comments on Merge Requests, Last 15 Failed Builds, ‎Last 15 Failed Deployments, Last 15 Opened and Unassigned Issues, Last 15 Opened Issues, Last 15 Reopened Issues, Last 15 Successful Builds, ‎Last 15 Successful Deployments, Last 20 Builds Summary, ‎Last 20 Deployments‎ Summary, Last 20 Issues Summary, Last 20 Merge Requests Summary, Last 20 Pipeline Summary, Merge Requests by Source Branch to Target Branch, Merge Requests by State, Merge Requests by Target Branch, Merge Requests Closed, Merge Requests Merged, Merge Requests Opened, Merge Requests Opened and Merged by Repository, Merged Merge Requests by Assignee Name, Modified Files, One Day Comparison, Open Issues by Assignee, Open Issues by Project, Open Issues by Repository, Opened Merge Requests by Creators, Opened Merge Requests by Project, Opened Merge Requests by Repository, Outlier of Failed Deployments, Outlier on Failed Builds, Pipelines Failed, Pipelines Successful, Projects with Environment  by Failed Deployments, Removed Files, Top 10 Merge Requests by Time taken to Merge (in hrs), Top 15 Issues by Time taken to Close, Top Slowest Build Stages, Total number of Commits by branch, Total number of Commits by Project, Total number of Commits by Repository, Total number of Commits by User



## Parser:
```
| json "object_attributes.id","object_attributes.ref","object_attributes.sha","object_attributes.stages","object_attributes.created_at","object_attributes.finished_at","object_attributes.duration","user.name","project.name","builds[*].stage","builds[*].name","builds[*].status","builds","project.web_url","commit.url","project.path_with_namespace" as pipeline_id,branch,commit_id,pipeline_stages,created_date_time,finished_date_time,duration_in_sec,user,project,jobs_stage,jobs_name
|  parse regex field=group "(?<group>.+)\/.+" 
| parse regex field = jobs "(?<json_added_blob>\{.*?(environment\"\:null}|\}\}))" multi
| json field= json_added_blob "id","stage","name","status","created_at","started_at","finished_at","duration","environment.name" as job_id,job_stage
 
```
### Use Cases:
10 Sowest Pipeline  Jobs, Added Files, Average Build Duration, Average Build Duration (seconds) by Project, Average Pipelines Duration, Avg Duration to Merge Merge Requests by Project, Avg Duration to Merge Merge Requests by Repository, Avg Pipleline Duration (in sec ) by Project, Avg Pipleline Duration (in sec) by Project, Avg Time to Close Issues by Project, Avg Time to Close Issues by Repository, Avg Time to Merge Merge Requests by Assignees, Avg. Pipelines Duration (sec) Project, Avg. Time (hrs) Taken to Close Issue by Project, Build Duration (in sec)  by Build Name, Build Duration (in sec)  by Project, Build Duration (in sec)  by Stage Name, Build Duration (in sec) by Repository, Build Duration (in seconds), Builds  By Status, Builds Failed, Builds Over Time, Builds Status by Repository, Builds Successful, Commits Summary, Deployments by state, Deployments Failed, Deployments Over Time, Deployments Status by Project, Deployments Successful, Failed Builds by Project, Failed Deployments  by Project, Failed Deployments by Environment, Failed Jobs by Stages, Failed Pipelines by Project, Issues by Label, Issues by Label Over Time, Issues by Severity, Issues by Severity Over Time, Issues by State, Issues Closed, Issues Opened, Issues Opened Vs Closed, Issues Reopened, Last 10 Closed Merge Requests, Last 10 Failed Pipelines, Last 10 Open Merge Requests, Last 10 Opened and Unassigned Merge Requests, Last 10 ReOpened Merge Requests, Last 10 Review Comments on Merge Requests, Last 15 Failed Builds, ‎Last 15 Failed Deployments, Last 15 Opened and Unassigned Issues, Last 15 Opened Issues, Last 15 Reopened Issues, Last 15 Successful Builds, ‎Last 15 Successful Deployments, Last 20 Builds Summary, ‎Last 20 Deployments‎ Summary, Last 20 Issues Summary, Last 20 Merge Requests Summary, Last 20 Pipeline Summary, Merge Requests by Source Branch to Target Branch, Merge Requests by State, Merge Requests by Target Branch, Merge Requests Closed, Merge Requests Merged, Merge Requests Opened, Merge Requests Opened and Merged by Repository, Merged Merge Requests by Assignee Name, Modified Files, One Day Comparison, Open Issues by Assignee, Open Issues by Project, Open Issues by Repository, Opened Merge Requests by Creators, Opened Merge Requests by Project, Opened Merge Requests by Repository, Outlier of Failed Deployments, Outlier on Failed Builds, Outlier on Failed Pipelines, Pipeline  by Status, Pipelines  Over Time, Pipelines Failed, Pipelines Successful, Pipleline Duration (in sec), Projects with Environment  by Failed Deployments, Removed Files, Top 10 Merge Requests by Time taken to Merge (in hrs), Top 10 Sowest Pipeline, Top 15 Issues by Time taken to Close, Top Slowest Build Stages, Total number of Commits by branch, Total number of Commits by Project, Total number of Commits by Repository, Total number of Commits by User



## Parser:
```
| json "object_attributes.id","object_attributes.ref","object_attributes.sha","object_attributes.stages","object_attributes.created_at","object_attributes.finished_at","object_attributes.duration","user.name","project.name","builds[*].stage","builds[*].name","builds[*].status","builds","project.web_url","commit.url","project.path_with_namespace" as pipeline_id,branch,commit_id,pipeline_stages,created_date_time,finished_date_time,duration_in_sec,user,project,jobs_stage,jobs_name,jobs_status,jobs,web_url,commit_url,group nodrop
|  parse regex field=group "(?<group>.+)\/.+" 
 
```
### Use Cases:
Added Files, Average Build Duration, Average Build Duration (seconds) by Project, Avg Duration to Merge Merge Requests by Project, Avg Duration to Merge Merge Requests by Repository, Avg Pipleline Duration (in sec) by Project, Avg Time to Close Issues by Project, Avg Time to Close Issues by Repository, Avg Time to Merge Merge Requests by Assignees, Avg. Pipelines Duration (sec) Project, Avg. Time (hrs) Taken to Close Issue by Project, Build Duration (in sec)  by Build Name, Build Duration (in sec)  by Project, Build Duration (in sec)  by Stage Name, Build Duration (in sec) by Repository, Build Duration (in seconds), Builds  By Status, Builds Failed, Builds Over Time, Builds Status by Repository, Builds Successful, Commits Summary, Deployments by state, Deployments Failed, Deployments Over Time, Deployments Status by Project, Deployments Successful, Failed Builds by Project, Failed Deployments  by Project, Failed Deployments by Environment, Failed Pipelines by Project, Issues by Label, Issues by Label Over Time, Issues by Severity, Issues by Severity Over Time, Issues by State, Issues Closed, Issues Opened, Issues Opened Vs Closed, Issues Reopened, Last 10 Closed Merge Requests, Last 10 Failed Pipelines, Last 10 Open Merge Requests, Last 10 Opened and Unassigned Merge Requests, Last 10 ReOpened Merge Requests, Last 10 Review Comments on Merge Requests, Last 15 Failed Builds, ‎Last 15 Failed Deployments, Last 15 Opened and Unassigned Issues, Last 15 Opened Issues, Last 15 Reopened Issues, Last 15 Successful Builds, ‎Last 15 Successful Deployments, Last 20 Builds Summary, ‎Last 20 Deployments‎ Summary, Last 20 Issues Summary, Last 20 Merge Requests Summary, Last 20 Pipeline Summary, Merge Requests by Source Branch to Target Branch, Merge Requests by State, Merge Requests by Target Branch, Merge Requests Closed, Merge Requests Merged, Merge Requests Opened, Merge Requests Opened and Merged by Repository, Merged Merge Requests by Assignee Name, Modified Files, One Day Comparison, Open Issues by Assignee, Open Issues by Project, Open Issues by Repository, Opened Merge Requests by Creators, Opened Merge Requests by Project, Opened Merge Requests by Repository, Outlier of Failed Deployments, Outlier on Failed Builds, Outlier on Failed Pipelines, Pipeline  by Status, Pipelines Failed, Pipelines Successful, Projects with Environment  by Failed Deployments, Removed Files, Top 10 Merge Requests by Time taken to Merge (in hrs), Top 10 Sowest Pipeline, Top 15 Issues by Time taken to Close, Top Slowest Build Stages, Total number of Commits by branch, Total number of Commits by Project, Total number of Commits by Repository, Total number of Commits by User



## Parser:
```
| json "object_attributes.id","object_attributes.ref","object_attributes.sha","object_attributes.stages","object_attributes.created_at","object_attributes.finished_at","object_attributes.duration","user.name","project.name","builds[*].stage","builds[*].name","builds[*].status","builds","project.web_url","commit.url","project.path_with_namespace" as pipeline_id,branch,commit_id,pipeline_stages,created_date_time,finished_date_time,duration_in_sec,user,project,jobs_stage,jobs_name,jobs_status,jobs,web_url,commit_url,group nodrop
|  parse regex field=group "(?<group>.+)\/.+" 
| parse regex field = jobs "(?<json_added_blob>\{.*?(environment\"\:null}|\}\}))" multi
| json field= json_added_blob "id","stage","name","status","created_at","started_at","finished_at","duration","environment.name" as job_id,job_stage,job_name,job_status
 
```
### Use Cases:
10 Sowest Pipeline  Jobs, Added Files, Average Build Duration, Average Build Duration (seconds) by Project, Average Pipelines Duration, Avg Duration to Merge Merge Requests by Project, Avg Duration to Merge Merge Requests by Repository, Avg Pipleline Duration (in sec ) by Project, Avg Pipleline Duration (in sec) by Project, Avg Time to Close Issues by Project, Avg Time to Close Issues by Repository, Avg Time to Merge Merge Requests by Assignees, Avg. Pipelines Duration (sec) Project, Avg. Time (hrs) Taken to Close Issue by Project, Build Duration (in sec)  by Build Name, Build Duration (in sec)  by Project, Build Duration (in sec)  by Stage Name, Build Duration (in sec) by Repository, Build Duration (in seconds), Builds  By Status, Builds Failed, Builds Over Time, Builds Status by Repository, Builds Successful, Commits Summary, Deployments by state, Deployments Failed, Deployments Over Time, Deployments Status by Project, Deployments Successful, Failed Builds by Project, Failed Deployments  by Project, Failed Deployments by Environment, Failed Jobs by Stages, Failed Pipelines by Project, Issues by Label, Issues by Label Over Time, Issues by Severity, Issues by Severity Over Time, Issues by State, Issues Closed, Issues Opened, Issues Opened Vs Closed, Issues Reopened, Last 10 Closed Merge Requests, Last 10 Failed Pipeline  Jobs, Last 10 Failed Pipelines, Last 10 Open Merge Requests, Last 10 Opened and Unassigned Merge Requests, Last 10 ReOpened Merge Requests, Last 10 Review Comments on Merge Requests, Last 15 Failed Builds, ‎Last 15 Failed Deployments, Last 15 Opened and Unassigned Issues, Last 15 Opened Issues, Last 15 Reopened Issues, Last 15 Successful Builds, ‎Last 15 Successful Deployments, Last 20 Builds Summary, ‎Last 20 Deployments‎ Summary, Last 20 Issues Summary, Last 20 Merge Requests Summary, Last 20 Pipeline Summary, Merge Requests by Source Branch to Target Branch, Merge Requests by State, Merge Requests by Target Branch, Merge Requests Closed, Merge Requests Merged, Merge Requests Opened, Merge Requests Opened and Merged by Repository, Merged Merge Requests by Assignee Name, Modified Files, One Day Comparison, Open Issues by Assignee, Open Issues by Project, Open Issues by Repository, Opened Merge Requests by Creators, Opened Merge Requests by Project, Opened Merge Requests by Repository, Outlier of Failed Deployments, Outlier on Failed Builds, Outlier on Failed Pipelines, Pipeline  by Status, Pipelines  Over Time, Pipelines Failed, Pipelines Successful, Pipleline Duration (in sec), Projects with Environment  by Failed Deployments, Removed Files, Top 10 Merge Requests by Time taken to Merge (in hrs), Top 10 Sowest Pipeline, Top 15 Issues by Time taken to Close, Top Slowest Build Stages, Total number of Commits by branch, Total number of Commits by Project, Total number of Commits by Repository, Total number of Commits by User



## Parser:
```
| json "object_attributes.id","object_attributes.ref","object_attributes.sha","object_attributes.stages","object_attributes.created_at","object_attributes.finished_at","object_attributes.duration","user.name","project.name","builds[*].stage","builds[*].name","builds[*].status","builds","project.web_url","commit.url","project.path_with_namespace" as pipeline_id,branch,commit_id,pipeline_stages,created_date_time,finished_date_time,duration_in_sec,user,project,jobs_stage,jobs_name,jobs_status,jobs,web_url,commit_url,group nodrop
| parse regex field=group "(?<group>.+)\/.+" 
| parse regex field = builds "(?<json_added_blob>\{.*?(environment\"\:null}|\}\}))" multi
| json field= json_added_blob "id","stage","name","status","created_at","started_at","finished_at","duration","environment.name" as job_id,job_stage,job_name,job_status,job_created_at,job_started_at,job_finished_at,job_duration,job_enviroment
 
```
### Use Cases:
10 Sowest Pipeline  Jobs, Added Files, Average Build Duration, Average Build Duration (seconds) by Project, Average Pipelines Duration, Avg Duration to Merge Merge Requests by Project, Avg Duration to Merge Merge Requests by Repository, Avg Job Duration (in sec) by Project, Avg Pipleline Duration (in sec ) by Project, Avg Pipleline Duration (in sec) by Project, Avg Time to Close Issues by Project, Avg Time to Close Issues by Repository, Avg Time to Merge Merge Requests by Assignees, Avg. Pipelines Duration (sec) Project, Avg. Time (hrs) Taken to Close Issue by Project, Build Duration (in sec)  by Build Name, Build Duration (in sec)  by Project, Build Duration (in sec)  by Stage Name, Build Duration (in sec) by Repository, Build Duration (in seconds), Builds  By Status, Builds Failed, Builds Over Time, Builds Status by Repository, Builds Successful, Commits Summary, Deployments by state, Deployments Failed, Deployments Over Time, Deployments Status by Project, Deployments Successful, Failed Builds by Project, Failed Deployments  by Project, Failed Deployments by Environment, Failed Jobs by Stages, Failed Pipelines by Project, Issues by Label, Issues by Label Over Time, Issues by Severity, Issues by Severity Over Time, Issues by State, Issues Closed, Issues Opened, Issues Opened Vs Closed, Issues Reopened, Last 10 Closed Merge Requests, Last 10 Failed Pipeline  Jobs, Last 10 Failed Pipelines, Last 10 Open Merge Requests, Last 10 Opened and Unassigned Merge Requests, Last 10 ReOpened Merge Requests, Last 10 Review Comments on Merge Requests, Last 15 Failed Builds, ‎Last 15 Failed Deployments, Last 15 Opened and Unassigned Issues, Last 15 Opened Issues, Last 15 Reopened Issues, Last 15 Successful Builds, ‎Last 15 Successful Deployments, Last 20 Builds Summary, ‎Last 20 Deployments‎ Summary, Last 20 Issues Summary, Last 20 Merge Requests Summary, Last 20 Pipeline Summary, Merge Requests by Source Branch to Target Branch, Merge Requests by State, Merge Requests by Target Branch, Merge Requests Closed, Merge Requests Merged, Merge Requests Opened, Merge Requests Opened and Merged by Repository, Merged Merge Requests by Assignee Name, Modified Files, One Day Comparison, Open Issues by Assignee, Open Issues by Project, Open Issues by Repository, Opened Merge Requests by Creators, Opened Merge Requests by Project, Opened Merge Requests by Repository, Outlier of Failed Deployments, Outlier on Failed Builds, Outlier on Failed Pipelines, Pipeline  by Status, Pipelines  Over Time, Pipelines Failed, Pipelines Successful, Pipleline Duration (in sec), Projects with Environment  by Failed Deployments, Removed Files, Top 10 Merge Requests by Time taken to Merge (in hrs), Top 10 Sowest Pipeline, Top 15 Issues by Time taken to Close, Top Slowest Build Stages, Total number of Commits by branch, Total number of Commits by Project, Total number of Commits by Repository, Total number of Commits by User



## Parser:
```
| json "object_attributes.id","object_attributes.ref","object_attributes.sha","object_attributes.stages","object_attributes.created_at","object_attributes.finished_at","object_attributes.duration","user.name","project.name","builds[*].stage","builds[*].name","builds[*].status","builds","project.web_url","commit.url","project.path_with_namespace" as pipeline_id,branch,commit_id,pipeline_stages,created_date_time,finished_date_time,pipeline_duration_in_sec,user,project,jobs_stage,jobs_name,jobs_status,jobs,web_url,commit_url,group nodrop
|  parse regex field=group "(?<group>.+)\/.+" 
 
```
### Use Cases:
Added Files, Average Build Duration, Average Build Duration (seconds) by Project, Avg Duration to Merge Merge Requests by Project, Avg Duration to Merge Merge Requests by Repository, Avg Pipleline Duration (in sec) by Project, Avg Time to Close Issues by Project, Avg Time to Close Issues by Repository, Avg Time to Merge Merge Requests by Assignees, Avg. Pipelines Duration (sec) Project, Avg. Time (hrs) Taken to Close Issue by Project, Build Duration (in sec)  by Build Name, Build Duration (in sec)  by Project, Build Duration (in sec)  by Stage Name, Build Duration (in sec) by Repository, Build Duration (in seconds), Builds  By Status, Builds Failed, Builds Over Time, Builds Status by Repository, Builds Successful, Commits Summary, Deployments by state, Deployments Failed, Deployments Over Time, Deployments Status by Project, Deployments Successful, Failed Builds by Project, Failed Deployments  by Project, Failed Deployments by Environment, Failed Pipelines by Project, Issues by Label, Issues by Label Over Time, Issues by Severity, Issues by Severity Over Time, Issues by State, Issues Closed, Issues Opened, Issues Opened Vs Closed, Issues Reopened, Last 10 Closed Merge Requests, Last 10 Open Merge Requests, Last 10 Opened and Unassigned Merge Requests, Last 10 ReOpened Merge Requests, Last 10 Review Comments on Merge Requests, Last 15 Failed Builds, ‎Last 15 Failed Deployments, Last 15 Opened and Unassigned Issues, Last 15 Opened Issues, Last 15 Reopened Issues, Last 15 Successful Builds, ‎Last 15 Successful Deployments, Last 20 Builds Summary, ‎Last 20 Deployments‎ Summary, Last 20 Issues Summary, Last 20 Merge Requests Summary, Last 20 Pipeline Summary, Merge Requests by Source Branch to Target Branch, Merge Requests by State, Merge Requests by Target Branch, Merge Requests Closed, Merge Requests Merged, Merge Requests Opened, Merge Requests Opened and Merged by Repository, Merged Merge Requests by Assignee Name, Modified Files, One Day Comparison, Open Issues by Assignee, Open Issues by Project, Open Issues by Repository, Opened Merge Requests by Creators, Opened Merge Requests by Project, Opened Merge Requests by Repository, Outlier of Failed Deployments, Outlier on Failed Builds, Pipeline  by Status, Pipelines Failed, Pipelines Successful, Projects with Environment  by Failed Deployments, Removed Files, Top 10 Merge Requests by Time taken to Merge (in hrs), Top 10 Sowest Pipeline, Top 15 Issues by Time taken to Close, Top Slowest Build Stages, Total number of Commits by branch, Total number of Commits by Project, Total number of Commits by Repository, Total number of Commits by User



## Parser:
```
| json "object_attributes.id","object_attributes.ref","object_attributes.sha","object_attributes.stages","object_attributes.created_at","object_attributes.finished_at","object_attributes.duration","user.name","project.name","builds[*].stage","builds[*].name","builds[*].status","builds","project.web_url","commit.url","project.path_with_namespace" as pipeline_id,branch,commit_id,pipeline_stages,created_date_time,finished_date_time,pipeline_duration_in_sec,user,project,jobs_stage,jobs_name,jobs_status,jobs,web_url,commit_url,group nodrop
| parse regex field=group "(?<group>.+)\/.+" 
 
```
### Use Cases:
Added Files, Average Build Duration, Average Build Duration (seconds) by Project, Average Pipelines Duration, Avg Duration to Merge Merge Requests by Project, Avg Duration to Merge Merge Requests by Repository, Avg Pipleline Duration (in sec ) by Project, Avg Pipleline Duration (in sec) by Project, Avg Time to Close Issues by Project, Avg Time to Close Issues by Repository, Avg Time to Merge Merge Requests by Assignees, Avg. Pipelines Duration (sec) Project, Avg. Time (hrs) Taken to Close Issue by Project, Build Duration (in sec)  by Build Name, Build Duration (in sec)  by Project, Build Duration (in sec)  by Stage Name, Build Duration (in sec) by Repository, Build Duration (in seconds), Builds  By Status, Builds Failed, Builds Over Time, Builds Status by Repository, Builds Successful, Commits Summary, Deployments by state, Deployments Failed, Deployments Over Time, Deployments Status by Project, Deployments Successful, Failed Builds by Project, Failed Deployments  by Project, Failed Deployments by Environment, Failed Pipelines by Project, Issues by Label, Issues by Label Over Time, Issues by Severity, Issues by Severity Over Time, Issues by State, Issues Closed, Issues Opened, Issues Opened Vs Closed, Issues Reopened, Last 10 Closed Merge Requests, Last 10 Failed Pipelines, Last 10 Open Merge Requests, Last 10 Opened and Unassigned Merge Requests, Last 10 ReOpened Merge Requests, Last 10 Review Comments on Merge Requests, Last 15 Failed Builds, ‎Last 15 Failed Deployments, Last 15 Opened and Unassigned Issues, Last 15 Opened Issues, Last 15 Reopened Issues, Last 15 Successful Builds, ‎Last 15 Successful Deployments, Last 20 Builds Summary, ‎Last 20 Deployments‎ Summary, Last 20 Issues Summary, Last 20 Merge Requests Summary, Last 20 Pipeline Summary, Merge Requests by Source Branch to Target Branch, Merge Requests by State, Merge Requests by Target Branch, Merge Requests Closed, Merge Requests Merged, Merge Requests Opened, Merge Requests Opened and Merged by Repository, Merged Merge Requests by Assignee Name, Modified Files, One Day Comparison, Open Issues by Assignee, Open Issues by Project, Open Issues by Repository, Opened Merge Requests by Creators, Opened Merge Requests by Project, Opened Merge Requests by Repository, Outlier of Failed Deployments, Outlier on Failed Builds, Outlier on Failed Pipelines, Pipeline  by Status, Pipelines  Over Time, Pipelines Failed, Pipelines Successful, Pipleline Duration (in sec), Projects with Environment  by Failed Deployments, Removed Files, Top 10 Merge Requests by Time taken to Merge (in hrs), Top 10 Sowest Pipeline, Top 15 Issues by Time taken to Close, Top Slowest Build Stages, Total number of Commits by branch, Total number of Commits by Project, Total number of Commits by Repository, Total number of Commits by User



## Parser:
```
| json "object_attributes.id","object_attributes.ref","object_attributes.sha","object_attributes.status","object_attributes.stages","object_attributes.created_at","object_attributes.finished_at","object_attributes.duration","user.name","project.name","builds[*].stage","builds[*].name","builds[*].status","builds" as pipeline_id,branch,commit_id,pipeline_status,pipeline_stages,created_date_time,finished_date_time,duration,user,project,builds_stage,builds_name,builds_status,builds nodrop
 
```
### Use Cases:
Added Files, Average Build Duration, Average Build Duration (seconds) by Project, Avg Duration to Merge Merge Requests by Project, Avg Duration to Merge Merge Requests by Repository, Avg Time to Close Issues by Project, Avg Time to Close Issues by Repository, Avg Time to Merge Merge Requests by Assignees, Avg. Pipelines Duration (sec) Project, Build Duration (in sec)  by Build Name, Build Duration (in sec)  by Project, Build Duration (in sec)  by Stage Name, Build Duration (in sec) by Repository, Build Duration (in seconds), Builds  By Status, Builds Failed, Builds Over Time, Builds Status by Repository, Builds Successful, Commits Summary, Deployments by state, Deployments Failed, Deployments Over Time, Deployments Status by Project, Deployments Successful, Failed Builds by Project, Failed Deployments  by Project, Failed Deployments by Environment, Failed Pipelines by Project, Issues by Label, Issues by Label Over Time, Issues by Severity, Issues by Severity Over Time, Issues by State, Issues Closed, Issues Opened, Issues Opened Vs Closed, Issues Reopened, Last 10 Closed Merge Requests, Last 10 Open Merge Requests, Last 10 Opened and Unassigned Merge Requests, Last 10 ReOpened Merge Requests, Last 10 Review Comments on Merge Requests, Last 15 Failed Builds, ‎Last 15 Failed Deployments, Last 15 Opened and Unassigned Issues, Last 15 Opened Issues, Last 15 Reopened Issues, Last 15 Successful Builds, ‎Last 15 Successful Deployments, Last 20 Builds Summary, ‎Last 20 Deployments‎ Summary, Last 20 Issues Summary, Last 20 Merge Requests Summary, Merge Requests by Source Branch to Target Branch, Merge Requests by State, Merge Requests by Target Branch, Merge Requests Closed, Merge Requests Merged, Merge Requests Opened, Merge Requests Opened and Merged by Repository, Merged Merge Requests by Assignee Name, Modified Files, One Day Comparison, Open Issues by Assignee, Open Issues by Project, Open Issues by Repository, Opened Merge Requests by Creators, Opened Merge Requests by Project, Opened Merge Requests by Repository, Outlier of Failed Deployments, Outlier on Failed Builds, Pipelines Failed, Pipelines Successful, Projects with Environment  by Failed Deployments, Removed Files, Top 10 Merge Requests by Time taken to Merge (in hrs), Top 15 Issues by Time taken to Close, Top Slowest Build Stages, Total number of Commits by branch, Total number of Commits by Project, Total number of Commits by Repository, Total number of Commits by User



## Parser:
```
| json "object_attributes.state" as issue_state
| json "user.name","project.id","project.name","projec.web_url","object_attributes.created_at","object_attributes.title","object_attributes.url","labels[*].title","object_attributes.severity","object_attributes.action","repository.name","assignees[*].name","object_attributes.id","object_attributes.closed_at" as user,project_id,project,project_url,created_date_time,title,issue_url,labels,severity,action,repo_name,assignees,issue_id,closed_date_time nodrop
 
```
### Use Cases:
Added Files, Average Build Duration, Average Build Duration (seconds) by Project, Avg Duration to Merge Merge Requests by Project, Avg Duration to Merge Merge Requests by Repository, Avg Time to Close Issues by Project, Avg Time to Close Issues by Repository, Avg Time to Merge Merge Requests by Assignees, Avg. Pipelines Duration (sec) Project, Avg. Time (hrs) Taken to Close Issue by Project, Build Duration (in sec)  by Build Name, Build Duration (in sec)  by Project, Build Duration (in sec)  by Stage Name, Build Duration (in sec) by Repository, Build Duration (in seconds), Builds  By Status, Builds Failed, Builds Over Time, Builds Status by Repository, Builds Successful, Commits Summary, Deployments by state, Deployments Failed, Deployments Over Time, Deployments Status by Project, Deployments Successful, Failed Builds by Project, Failed Deployments  by Project, Failed Deployments by Environment, Failed Pipelines by Project, Issues by Label, Issues by Label Over Time, Issues by Severity, Issues by Severity Over Time, Issues by State, Issues Closed, Issues Opened, Issues Opened Vs Closed, Issues Reopened, Last 10 Closed Merge Requests, Last 10 Open Merge Requests, Last 10 Opened and Unassigned Merge Requests, Last 10 ReOpened Merge Requests, Last 10 Review Comments on Merge Requests, Last 15 Failed Builds, ‎Last 15 Failed Deployments, Last 15 Opened and Unassigned Issues, Last 15 Opened Issues, Last 15 Reopened Issues, Last 15 Successful Builds, ‎Last 15 Successful Deployments, Last 20 Builds Summary, ‎Last 20 Deployments‎ Summary, Last 20 Issues Summary, Last 20 Merge Requests Summary, Merge Requests by Source Branch to Target Branch, Merge Requests by State, Merge Requests by Target Branch, Merge Requests Closed, Merge Requests Merged, Merge Requests Opened, Merge Requests Opened and Merged by Repository, Merged Merge Requests by Assignee Name, Modified Files, One Day Comparison, Open Issues by Assignee, Open Issues by Project, Open Issues by Repository, Opened Merge Requests by Creators, Opened Merge Requests by Project, Opened Merge Requests by Repository, Outlier of Failed Deployments, Outlier on Failed Builds, Pipelines Failed, Pipelines Successful, Projects with Environment  by Failed Deployments, Removed Files, Top 10 Merge Requests by Time taken to Merge (in hrs), Top 15 Issues by Time taken to Close, Top Slowest Build Stages, Total number of Commits by branch, Total number of Commits by Project, Total number of Commits by Repository, Total number of Commits by User



## Parser:
```
| json "object_attributes.state" as issue_state
| json "user.name","project.id","project.name","projec.web_url","object_attributes.created_at","object_attributes.title","object_attributes.url","labels[*].title","object_attributes.severity","object_attributes.action","repository.name","assignees[*].name","object_attributes.id","object_attributes.closed_at","project.path_with_namespace"  as user,project_id,project,project_url,created_date_time,title,issue_url,labels,severity,action,repo_name,assignees,issue_id,closed_date_time,group nodrop
| parse regex field=group "(?<group>.+)\/.+" 
 
```
### Use Cases:
Added Files, Average Build Duration, Avg Time to Close Issues by Project, Avg Time to Close Issues by Repository, Build Duration (in sec)  by Build Name, Build Duration (in sec)  by Project, Build Duration (in sec)  by Stage Name, Build Duration (in sec) by Repository, Build Duration (in seconds), Builds  By Status, Builds Failed, Builds Over Time, Builds Status by Repository, Builds Successful, Commits Summary, Deployments by state, Deployments Failed, Deployments Over Time, Deployments Status by Project, Deployments Successful, Issues by Label, Issues by Label Over Time, Issues by Severity, Issues by State, Issues Closed, Issues Opened, Issues Opened Vs Closed, Issues Reopened, Last 15 Failed Builds, ‎Last 15 Failed Deployments, Last 15 Opened and Unassigned Issues, Last 15 Opened Issues, Last 15 Reopened Issues, Last 15 Successful Builds, ‎Last 15 Successful Deployments, Last 20 Builds Summary, ‎Last 20 Deployments‎ Summary, Last 20 Issues Summary, Modified Files, One Day Comparison, Open Issues by Assignee, Open Issues by Project, Open Issues by Repository, Outlier of Failed Deployments, Outlier on Failed Builds, Projects with Environment  by Failed Deployments, Removed Files, Top 15 Issues by Time taken to Close, Top Slowest Build Stages, Total number of Commits by branch, Total number of Commits by Project, Total number of Commits by Repository, Total number of Commits by User



## Parser:
```
| json "object_attributes.state" as issue_state
| json "user.name","project.id","project.name","projec.web_url","object_attributes.created_at","object_attributes.title","object_attributes.url","labels[*].title","object_attributes.severity","object_attributes.action","repository.name","assignees[*].name","object_attributes.id","object_attributes.closed_at","project.path_with_namespace" as user,project_id,project,project_url,created_date_time,title,issue_url,labels,severity,action,repo_name,assignees,issue_id,closed_date_time,group nodrop
|  parse regex field=group "(?<group>.+)\/.+"
 
```
### Use Cases:
Added Files, Average Build Duration, Avg Time to Close Issues by Repository, Build Duration (in sec)  by Build Name, Build Duration (in sec)  by Project, Build Duration (in sec)  by Stage Name, Build Duration (in sec) by Repository, Build Duration (in seconds), Builds  By Status, Builds Failed, Builds Over Time, Builds Status by Repository, Builds Successful, Commits Summary, Deployments by state, Deployments Failed, Deployments Over Time, Deployments Status by Project, Deployments Successful, Issues by Label, Issues by Label Over Time, Issues by Severity, Issues by State, Issues Closed, Issues Opened, Issues Opened Vs Closed, Issues Reopened, Last 15 Failed Builds, ‎Last 15 Failed Deployments, Last 15 Opened and Unassigned Issues, Last 15 Opened Issues, Last 15 Reopened Issues, Last 15 Successful Builds, ‎Last 15 Successful Deployments, Last 20 Builds Summary, ‎Last 20 Deployments‎ Summary, Last 20 Issues Summary, Modified Files, One Day Comparison, Open Issues by Assignee, Open Issues by Project, Open Issues by Repository, Outlier of Failed Deployments, Outlier on Failed Builds, Projects with Environment  by Failed Deployments, Removed Files, Top 15 Issues by Time taken to Close, Top Slowest Build Stages, Total number of Commits by branch, Total number of Commits by Project, Total number of Commits by Repository, Total number of Commits by User



## Parser:
```
| json "object_attributes.state" as issue_state
| json "user.name","project.id","project.name","projec.web_url","object_attributes.created_at","object_attributes.title","object_attributes.url","labels[*].title","object_attributes.severity","object_attributes.action","repository.name","assignees[*].name","object_attributes.id","object_attributes.closed_at","project.path_with_namespace" as user,project_id,project,project_url,created_date_time,title,issue_url,labels,severity,action,repo_name,assignees,issue_id,closed_date_time,group nodrop
|  parse regex field=group "(?<group>.+)\/.+" 
 
```
### Use Cases:
Added Files, Average Build Duration, Build Duration (in sec)  by Build Name, Build Duration (in sec)  by Project, Build Duration (in sec)  by Stage Name, Build Duration (in sec) by Repository, Build Duration (in seconds), Builds  By Status, Builds Failed, Builds Over Time, Builds Status by Repository, Builds Successful, Commits Summary, Deployments by state, Deployments Failed, Deployments Over Time, Deployments Status by Project, Deployments Successful, Issues by State, Issues Closed, Issues Opened, Last 15 Failed Builds, ‎Last 15 Failed Deployments, Last 15 Opened and Unassigned Issues, Last 15 Opened Issues, Last 15 Reopened Issues, Last 15 Successful Builds, ‎Last 15 Successful Deployments, Last 20 Builds Summary, ‎Last 20 Deployments‎ Summary, Last 20 Issues Summary, Modified Files, One Day Comparison, Open Issues by Project, Open Issues by Repository, Outlier of Failed Deployments, Outlier on Failed Builds, Projects with Environment  by Failed Deployments, Removed Files, Top 15 Issues by Time taken to Close, Top Slowest Build Stages, Total number of Commits by branch, Total number of Commits by Project, Total number of Commits by Repository, Total number of Commits by User



## Parser:
```
| json "object_attributes.state" as issue_state
| json "user.name","project.id","project.name","projec.web_url","object_attributes.created_at","object_attributes.title","object_attributes.url","labels[*].title","object_attributes.severity","object_attributes.action","repository.name","assignees[*].name","object_attributes.id","project.path_with_namespace"  as user,project_id,project,project_url,created_date_time,title,issue_url,labels,severity,action,repo_name,assignees,issue_id,group nodrop
|  parse regex field=group "(?<group>.+)\/.+" 
 
```
### Use Cases:
Added Files, Average Build Duration, Build Duration (in sec)  by Build Name, Build Duration (in sec)  by Project, Build Duration (in sec)  by Stage Name, Build Duration (in sec) by Repository, Build Duration (in seconds), Builds  By Status, Builds Failed, Builds Over Time, Builds Status by Repository, Builds Successful, Commits Summary, Deployments by state, Deployments Failed, Deployments Over Time, Deployments Status by Project, Deployments Successful, Issues by State, Issues Closed, Issues Opened, Last 15 Failed Builds, ‎Last 15 Failed Deployments, Last 15 Successful Builds, ‎Last 15 Successful Deployments, Last 20 Builds Summary, ‎Last 20 Deployments‎ Summary, Modified Files, One Day Comparison, Open Issues by Repository, Outlier of Failed Deployments, Outlier on Failed Builds, Projects with Environment  by Failed Deployments, Removed Files, Top Slowest Build Stages, Total number of Commits by branch, Total number of Commits by Project, Total number of Commits by Repository, Total number of Commits by User



## Parser:
```
| json "object_attributes.state" as issue_state
| json "user.name","project.id","project.name","projec.web_url","object_attributes.created_at","object_attributes.title","object_attributes.url","labels[*].title","object_attributes.severity","object_attributes.action","repository.name","assignees[*].name","object_attributes.id","project.path_with_namespace"  as user,project_id,project,project_url,created_date_time,title,issue_url,labels,severity,action,repo_name,assignees,issue_id,group nodrop
|  parse regex field=group "(?<group>.+)\/.+" 
| parse regex field=labels "\"(?<label>[^\"]+)\"" multi nodrop
 
```
### Use Cases:
Added Files, Average Build Duration, Avg Time to Close Issues by Project, Avg Time to Close Issues by Repository, Build Duration (in sec)  by Build Name, Build Duration (in sec)  by Project, Build Duration (in sec)  by Stage Name, Build Duration (in sec) by Repository, Build Duration (in seconds), Builds  By Status, Builds Failed, Builds Over Time, Builds Status by Repository, Builds Successful, Commits Summary, Deployments by state, Deployments Failed, Deployments Over Time, Deployments Status by Project, Deployments Successful, Issues by Label, Issues by Label Over Time, Issues by Severity, Issues by Severity Over Time, Issues by State, Issues Closed, Issues Opened, Issues Opened Vs Closed, Issues Reopened, Last 15 Failed Builds, ‎Last 15 Failed Deployments, Last 15 Opened and Unassigned Issues, Last 15 Opened Issues, Last 15 Reopened Issues, Last 15 Successful Builds, ‎Last 15 Successful Deployments, Last 20 Builds Summary, ‎Last 20 Deployments‎ Summary, Last 20 Issues Summary, Modified Files, One Day Comparison, Open Issues by Assignee, Open Issues by Project, Open Issues by Repository, Outlier of Failed Deployments, Outlier on Failed Builds, Projects with Environment  by Failed Deployments, Removed Files, Top 15 Issues by Time taken to Close, Top Slowest Build Stages, Total number of Commits by branch, Total number of Commits by Project, Total number of Commits by Repository, Total number of Commits by User



## Parser:
```
| json "object_attributes.state" as issue_state
| json "user.name","project.id","project.name","projec.web_url","object_attributes.created_at","object_attributes.title","object_attributes.url","labels[*].title","object_attributes.severity","object_attributes.action","repository.name","assignees[*].name","object_attributes.id","project.path_with_namespace"  as user,project_id,project,project_url,created_date_time,title,issue_url,labels,severity,action,repo_name,assignees,issue_id,group nodrop
| parse regex field=group "(?<group>.+)\/.+" 
 
```
### Use Cases:
Added Files, Average Build Duration, Build Duration (in sec)  by Build Name, Build Duration (in sec)  by Project, Build Duration (in sec)  by Stage Name, Build Duration (in sec) by Repository, Build Duration (in seconds), Builds  By Status, Builds Failed, Builds Over Time, Builds Status by Repository, Builds Successful, Commits Summary, Deployments by state, Deployments Failed, Deployments Over Time, Deployments Status by Project, Deployments Successful, Issues by State, Issues Closed, Issues Opened, Last 15 Failed Builds, ‎Last 15 Failed Deployments, Last 15 Successful Builds, ‎Last 15 Successful Deployments, Last 20 Builds Summary, ‎Last 20 Deployments‎ Summary, Modified Files, One Day Comparison, Open Issues by Project, Open Issues by Repository, Outlier of Failed Deployments, Outlier on Failed Builds, Projects with Environment  by Failed Deployments, Removed Files, Top Slowest Build Stages, Total number of Commits by branch, Total number of Commits by Project, Total number of Commits by Repository, Total number of Commits by User



## Parser:
```
| json "object_attributes.state" as issue_state
| json "user.name","project.id","project.name","projec.web_url","object_attributes.created_at","object_attributes.title","object_attributes.url","labels[*].title","object_attributes.severity","object_attributes.action","repository.name","assignees[*].name","object_attributes.id","project.path_with_namespace" as user,project_id,project,project_url,created_date_time,title,issue_url,labels,severity,action,repo_name,assignees,issue_id,group  nodrop
|  parse regex field=group "(?<group>.+)\/.+" 
 
```
### Use Cases:
Added Files, Average Build Duration, Build Duration (in sec)  by Build Name, Build Duration (in sec)  by Project, Build Duration (in sec)  by Stage Name, Build Duration (in sec) by Repository, Build Duration (in seconds), Builds  By Status, Builds Failed, Builds Over Time, Builds Status by Repository, Builds Successful, Commits Summary, Deployments by state, Deployments Failed, Deployments Over Time, Deployments Status by Project, Deployments Successful, Issues by State, Issues Closed, Issues Opened, Last 15 Failed Builds, ‎Last 15 Failed Deployments, Last 15 Successful Builds, ‎Last 15 Successful Deployments, Last 20 Builds Summary, ‎Last 20 Deployments‎ Summary, Modified Files, One Day Comparison, Outlier of Failed Deployments, Outlier on Failed Builds, Projects with Environment  by Failed Deployments, Removed Files, Top Slowest Build Stages, Total number of Commits by branch, Total number of Commits by Project, Total number of Commits by Repository, Total number of Commits by User



## Parser:
```
| json "object_attributes.state" as issue_state
| json "user.name","project.id","project.name","projec.web_url","object_attributes.created_at","object_attributes.title","object_attributes.url","labels[*].title","object_attributes.severity","object_attributes.action","repository.name","assignees[*].name","object_attributes.id","project.path_with_namespace" as user,project_id,project,project_url,created_date_time,title,issue_url,labels,severity,action,repo_name,assignees,issue_id,group nodrop
|  parse regex field=group "(?<group>.+)\/.+"
 
```
### Use Cases:
Added Files, Average Build Duration, Build Duration (in sec)  by Build Name, Build Duration (in sec)  by Project, Build Duration (in sec)  by Stage Name, Build Duration (in sec) by Repository, Build Duration (in seconds), Builds  By Status, Builds Failed, Builds Over Time, Builds Status by Repository, Builds Successful, Commits Summary, Deployments by state, Deployments Failed, Deployments Over Time, Deployments Status by Project, Deployments Successful, Issues by State, Issues Closed, Issues Opened, Last 15 Failed Builds, ‎Last 15 Failed Deployments, Last 15 Opened and Unassigned Issues, Last 15 Opened Issues, Last 15 Reopened Issues, Last 15 Successful Builds, ‎Last 15 Successful Deployments, Last 20 Builds Summary, ‎Last 20 Deployments‎ Summary, Last 20 Issues Summary, Modified Files, One Day Comparison, Open Issues by Project, Open Issues by Repository, Outlier of Failed Deployments, Outlier on Failed Builds, Projects with Environment  by Failed Deployments, Removed Files, Top Slowest Build Stages, Total number of Commits by branch, Total number of Commits by Project, Total number of Commits by Repository, Total number of Commits by User



## Parser:
```
| json "object_attributes.state" as issue_state
| json "user.name","project.id","project.name","projec.web_url","object_attributes.created_at","object_attributes.title","object_attributes.url","labels[*].title","object_attributes.severity","object_attributes.action","repository.name","assignees[*].name","object_attributes.id","project.path_with_namespace" as user,project_id,project,project_url,created_date_time,title,issue_url,labels,severity,action,repo_name,assignees,issue_id,group nodrop
|  parse regex field=group "(?<group>.+)\/.+" 
 
```
### Use Cases:
Added Files, Average Build Duration, Build Duration (in sec)  by Build Name, Build Duration (in sec)  by Project, Build Duration (in sec)  by Stage Name, Build Duration (in sec) by Repository, Build Duration (in seconds), Builds  By Status, Builds Failed, Builds Over Time, Builds Status by Repository, Builds Successful, Commits Summary, Deployments by state, Deployments Failed, Deployments Over Time, Deployments Status by Project, Deployments Successful, Issues by Label, Issues by Label Over Time, Issues by Severity, Issues by State, Issues Closed, Issues Opened, Issues Opened Vs Closed, Issues Reopened, Last 15 Failed Builds, ‎Last 15 Failed Deployments, Last 15 Opened and Unassigned Issues, Last 15 Opened Issues, Last 15 Reopened Issues, Last 15 Successful Builds, ‎Last 15 Successful Deployments, Last 20 Builds Summary, ‎Last 20 Deployments‎ Summary, Last 20 Issues Summary, Modified Files, One Day Comparison, Open Issues by Assignee, Open Issues by Project, Open Issues by Repository, Outlier of Failed Deployments, Outlier on Failed Builds, Projects with Environment  by Failed Deployments, Removed Files, Top 15 Issues by Time taken to Close, Top Slowest Build Stages, Total number of Commits by branch, Total number of Commits by Project, Total number of Commits by Repository, Total number of Commits by User



## Parser:
```
| json "object_attributes.state" as issue_state
| json "user.name","project.id","project.name","projec.web_url","object_attributes.created_at","object_attributes.title","object_attributes.url","labels[*].title","object_attributes.severity","object_attributes.action","repository.name","assignees[*].name","object_attributes.id","project.path_with_namespace" as user,project_id,project,project_url,created_date_time,title,issue_url,labels,severity,action,repo_name,assignees,issue_id,group nodrop
|  parse regex field=group "(?<group>.+)\/.+" 
| parse regex field=assignees"\"(?<assignee_name>[^\"]+)\"" multi 
 
```
### Use Cases:
Added Files, Average Build Duration, Build Duration (in sec)  by Build Name, Build Duration (in sec)  by Project, Build Duration (in sec)  by Stage Name, Build Duration (in sec) by Repository, Build Duration (in seconds), Builds  By Status, Builds Failed, Builds Over Time, Builds Status by Repository, Builds Successful, Commits Summary, Deployments by state, Deployments Failed, Deployments Over Time, Deployments Status by Project, Deployments Successful, Issues by Label, Issues by Severity, Issues by State, Issues Closed, Issues Opened, Last 15 Failed Builds, ‎Last 15 Failed Deployments, Last 15 Opened and Unassigned Issues, Last 15 Opened Issues, Last 15 Reopened Issues, Last 15 Successful Builds, ‎Last 15 Successful Deployments, Last 20 Builds Summary, ‎Last 20 Deployments‎ Summary, Last 20 Issues Summary, Modified Files, One Day Comparison, Open Issues by Assignee, Open Issues by Project, Open Issues by Repository, Outlier of Failed Deployments, Outlier on Failed Builds, Projects with Environment  by Failed Deployments, Removed Files, Top 15 Issues by Time taken to Close, Top Slowest Build Stages, Total number of Commits by branch, Total number of Commits by Project, Total number of Commits by Repository, Total number of Commits by User



## Parser:
```
| json "object_attributes.state" as issue_state
| json "user.name","project.id","project.name","projec.web_url","object_attributes.created_at","object_attributes.title","object_attributes.url","labels[*].title","object_attributes.severity","object_attributes.action","repository.name","assignees[*].name","object_attributes.id","project.path_with_namespace" as user,project_id,project,project_url,created_date_time,title,issue_url,labels,severity,action,repo_name,assignees,issue_id,group nodrop
|  parse regex field=group "(?<group>.+)\/.+" 
| parse regex field=labels "\"(?<label>[^\"]+)\"" multi nodrop
 
```
### Use Cases:
Added Files, Average Build Duration, Build Duration (in sec)  by Build Name, Build Duration (in sec)  by Project, Build Duration (in sec)  by Stage Name, Build Duration (in sec) by Repository, Build Duration (in seconds), Builds  By Status, Builds Failed, Builds Over Time, Builds Status by Repository, Builds Successful, Commits Summary, Deployments by state, Deployments Failed, Deployments Over Time, Deployments Status by Project, Deployments Successful, Issues by Label, Issues by Label Over Time, Issues by Severity, Issues by State, Issues Closed, Issues Opened, Issues Reopened, Last 15 Failed Builds, ‎Last 15 Failed Deployments, Last 15 Opened and Unassigned Issues, Last 15 Opened Issues, Last 15 Reopened Issues, Last 15 Successful Builds, ‎Last 15 Successful Deployments, Last 20 Builds Summary, ‎Last 20 Deployments‎ Summary, Last 20 Issues Summary, Modified Files, One Day Comparison, Open Issues by Assignee, Open Issues by Project, Open Issues by Repository, Outlier of Failed Deployments, Outlier on Failed Builds, Projects with Environment  by Failed Deployments, Removed Files, Top 15 Issues by Time taken to Close, Top Slowest Build Stages, Total number of Commits by branch, Total number of Commits by Project, Total number of Commits by Repository, Total number of Commits by User



## Parser:
```
| json "object_attributes.state","object_attributes.action" as issue_state,action
| json "user.name","project.id","project.name","projec.web_url","object_attributes.created_at","object_attributes.title","object_attributes.url","labels[*].title","object_attributes.severity","repository.name","assignees[*].name","object_attributes.id","project.path_with_namespace" as user,project_id,project,project_url,created_date_time,title,issue_url,labels,severity,repo_name,assignees,issue_id,group nodrop
|  parse regex field=group "(?<group>.+)\/.+"
 
```
### Use Cases:
Added Files, Average Build Duration, Build Duration (in sec)  by Build Name, Build Duration (in sec)  by Project, Build Duration (in sec)  by Stage Name, Build Duration (in sec) by Repository, Build Duration (in seconds), Builds  By Status, Builds Failed, Builds Over Time, Builds Status by Repository, Builds Successful, Commits Summary, Deployments by state, Deployments Failed, Deployments Over Time, Deployments Status by Project, Deployments Successful, Issues by State, Issues Closed, Issues Opened, Last 15 Failed Builds, ‎Last 15 Failed Deployments, Last 15 Opened and Unassigned Issues, Last 15 Opened Issues, Last 15 Reopened Issues, Last 15 Successful Builds, ‎Last 15 Successful Deployments, Last 20 Builds Summary, ‎Last 20 Deployments‎ Summary, Modified Files, One Day Comparison, Open Issues by Project, Open Issues by Repository, Outlier of Failed Deployments, Outlier on Failed Builds, Projects with Environment  by Failed Deployments, Removed Files, Top Slowest Build Stages, Total number of Commits by branch, Total number of Commits by Project, Total number of Commits by Repository, Total number of Commits by User



## Parser:
```
| json "object_attributes.status" as pipeline_status
| json "object_attributes.id","object_attributes.ref","object_attributes.sha","object_attributes.stages","object_attributes.created_at","object_attributes.finished_at","object_attributes.duration","user.name","project.name","builds[*].stage","builds[*].name","builds[*].status","builds","project.web_url" as pipeline_id,branch,commit_id,pipeline_stages,created_date_time,finished_date_time,duration,user,project_name,builds_stage,builds_name,builds_status,builds,web_url
 
```
### Use Cases:
Added Files, Average Build Duration, Average Build Duration (seconds) by Project, Avg Duration to Merge Merge Requests by Project, Avg Duration to Merge Merge Requests by Repository, Avg Time to Close Issues by Project, Avg Time to Close Issues by Repository, Avg Time to Merge Merge Requests by Assignees, Build Duration (in sec)  by Build Name, Build Duration (in sec)  by Project, Build Duration (in sec)  by Stage Name, Build Duration (in sec) by Repository, Build Duration (in seconds), Builds  By Status, Builds Failed, Builds Over Time, Builds Status by Repository, Builds Successful, Commits Summary, Deployments by state, Deployments Failed, Deployments Over Time, Deployments Status by Project, Deployments Successful, Failed Builds by Project, Failed Deployments  by Project, Failed Deployments by Environment, Failed Pipelines by Project, Issues by Label, Issues by Label Over Time, Issues by Severity, Issues by Severity Over Time, Issues by State, Issues Closed, Issues Opened, Issues Opened Vs Closed, Issues Reopened, Last 10 Closed Merge Requests, Last 10 Open Merge Requests, Last 10 Opened and Unassigned Merge Requests, Last 10 ReOpened Merge Requests, Last 10 Review Comments on Merge Requests, Last 15 Failed Builds, ‎Last 15 Failed Deployments, Last 15 Opened and Unassigned Issues, Last 15 Opened Issues, Last 15 Reopened Issues, Last 15 Successful Builds, ‎Last 15 Successful Deployments, Last 20 Builds Summary, ‎Last 20 Deployments‎ Summary, Last 20 Issues Summary, Last 20 Merge Requests Summary, Merge Requests by Source Branch to Target Branch, Merge Requests by State, Merge Requests by Target Branch, Merge Requests Closed, Merge Requests Merged, Merge Requests Opened, Merge Requests Opened and Merged by Repository, Merged Merge Requests by Assignee Name, Modified Files, One Day Comparison, Open Issues by Assignee, Open Issues by Project, Open Issues by Repository, Opened Merge Requests by Creators, Opened Merge Requests by Project, Opened Merge Requests by Repository, Outlier of Failed Deployments, Outlier on Failed Builds, Pipelines Failed, Pipelines Successful, Projects with Environment  by Failed Deployments, Removed Files, Top 10 Merge Requests by Time taken to Merge (in hrs), Top 15 Issues by Time taken to Close, Top Slowest Build Stages, Total number of Commits by branch, Total number of Commits by Project, Total number of Commits by Repository, Total number of Commits by User



## Parser:
```
| json "status" as deployment_status
| json "deployable_id","status_changed_at","environment","deployable_url","user.name","commit_url","project.name" ,"commit_title" as deployable_id,deployment_status_changed_at,environment,deployable_url,user ,commit_link,project,commit_title nodrop
 
```
### Use Cases:
Added Files, Average Build Duration, Average Build Duration (seconds) by Project, Avg Duration to Merge Merge Requests by Project, Avg Duration to Merge Merge Requests by Repository, Avg Time to Close Issues by Project, Avg Time to Close Issues by Repository, Avg Time to Merge Merge Requests by Assignees, Build Duration (in sec)  by Build Name, Build Duration (in sec)  by Project, Build Duration (in sec)  by Stage Name, Build Duration (in sec) by Repository, Build Duration (in seconds), Builds  By Status, Builds Failed, Builds Over Time, Builds Status by Repository, Builds Successful, Commits Summary, Deployments by state, Deployments Failed, Deployments Over Time, Deployments Status by Project, Deployments Successful, Failed Builds by Project, Failed Deployments  by Project, Failed Deployments by Environment, Issues by Label, Issues by Label Over Time, Issues by Severity, Issues by Severity Over Time, Issues by State, Issues Closed, Issues Opened, Issues Opened Vs Closed, Issues Reopened, Last 10 Closed Merge Requests, Last 10 Open Merge Requests, Last 10 Opened and Unassigned Merge Requests, Last 10 ReOpened Merge Requests, Last 10 Review Comments on Merge Requests, Last 15 Failed Builds, ‎Last 15 Failed Deployments, Last 15 Opened and Unassigned Issues, Last 15 Opened Issues, Last 15 Reopened Issues, Last 15 Successful Builds, ‎Last 15 Successful Deployments, Last 20 Builds Summary, ‎Last 20 Deployments‎ Summary, Last 20 Issues Summary, Last 20 Merge Requests Summary, Merge Requests by Source Branch to Target Branch, Merge Requests by State, Merge Requests by Target Branch, Merge Requests Closed, Merge Requests Merged, Merge Requests Opened, Merge Requests Opened and Merged by Repository, Merged Merge Requests by Assignee Name, Modified Files, One Day Comparison, Open Issues by Assignee, Open Issues by Project, Open Issues by Repository, Opened Merge Requests by Creators, Opened Merge Requests by Project, Opened Merge Requests by Repository, Outlier of Failed Deployments, Outlier on Failed Builds, Projects with Environment  by Failed Deployments, Removed Files, Top 10 Merge Requests by Time taken to Merge (in hrs), Top 15 Issues by Time taken to Close, Top Slowest Build Stages, Total number of Commits by branch, Total number of Commits by Project, Total number of Commits by Repository, Total number of Commits by User



## Parser:
```
| json "status" as deployment_status
| json "deployable_id","status_changed_at","environment","deployable_url","user.name","commit_url","project.name" ,"commit_title","project.path_with_namespace"  as deployable_id,deployment_status_changed_at,environment,deployable_url,user ,commit_link,project,commit_title,group nodrop
|  parse regex field=group "(?<group>.+)\/.+" 
 
```
### Use Cases:
Added Files, Average Build Duration, Build Duration (in sec)  by Build Name, Build Duration (in sec)  by Project, Build Duration (in sec)  by Stage Name, Build Duration (in sec) by Repository, Build Duration (in seconds), Builds  By Status, Builds Failed, Builds Over Time, Builds Status by Repository, Builds Successful, Commits Summary, Deployments by state, Deployments Failed, Deployments Over Time, Deployments Successful, Last 15 Failed Builds, Last 15 Successful Builds, ‎Last 15 Successful Deployments, Last 20 Builds Summary, Modified Files, One Day Comparison, Outlier on Failed Builds, Removed Files, Top Slowest Build Stages, Total number of Commits by branch, Total number of Commits by Project, Total number of Commits by Repository, Total number of Commits by User



## Parser:
```
| json "status" as deployment_status
| json "deployable_id","status_changed_at","environment","deployable_url","user.name","commit_url","project.name" ,"commit_title","project.path_with_namespace"  as deployable_id,deployment_status_changed_at,environment,deployable_url,user ,commit_link,project,commit_title,group nodrop
| parse regex field=group "(?<group>.+)\/.+" 
 
```
### Use Cases:
Added Files, Average Build Duration, Build Duration (in sec)  by Build Name, Build Duration (in sec)  by Project, Build Duration (in sec)  by Stage Name, Build Duration (in sec) by Repository, Build Duration (in seconds), Builds  By Status, Builds Failed, Builds Over Time, Builds Status by Repository, Builds Successful, Commits Summary, Deployments Failed, Deployments Successful, Last 15 Failed Builds, Last 15 Successful Builds, ‎Last 15 Successful Deployments, Last 20 Builds Summary, Modified Files, One Day Comparison, Outlier on Failed Builds, Removed Files, Top Slowest Build Stages, Total number of Commits by branch, Total number of Commits by Project, Total number of Commits by Repository, Total number of Commits by User



## Parser:
```
| json "status" as deployment_status
| json "deployable_id","status_changed_at","environment","deployable_url","user.name","commit_url","project.name" ,"commit_title","project.path_with_namespace" as deployable_id,deployment_status_changed_at,environment,deployable_url,user ,commit_link,project,commit_title,group nodrop
|  parse regex field=group "(?<group>.+)\/.+" 
 
```
### Use Cases:
Added Files, Average Build Duration, Build Duration (in sec)  by Build Name, Build Duration (in sec)  by Project, Build Duration (in sec)  by Stage Name, Build Duration (in sec) by Repository, Build Duration (in seconds), Builds  By Status, Builds Failed, Builds Over Time, Builds Status by Repository, Builds Successful, Commits Summary, Deployments by state, Deployments Failed, Deployments Over Time, Deployments Status by Project, Deployments Successful, Last 15 Failed Builds, ‎Last 15 Failed Deployments, Last 15 Successful Builds, ‎Last 15 Successful Deployments, Last 20 Builds Summary, ‎Last 20 Deployments‎ Summary, Modified Files, One Day Comparison, Outlier of Failed Deployments, Outlier on Failed Builds, Projects with Environment  by Failed Deployments, Removed Files, Top Slowest Build Stages, Total number of Commits by branch, Total number of Commits by Project, Total number of Commits by Repository, Total number of Commits by User



## Parser:
```
| json "status" as deployment_status
| json "deployable_id","status_changed_at","environment","deployable_url","user.name","commit_url","project.name" ,"commit_title","project.path_with_namespace" as deployable_id,deployment_status_changed_at,environment,deployable_url,user ,commit_link,project,commit_title,group nodrop
| parse regex field=group "(?<group>.+)\/.+" 
 
```
### Use Cases:
Added Files, Average Build Duration, Build Duration (in sec)  by Build Name, Build Duration (in sec)  by Project, Build Duration (in sec)  by Stage Name, Build Duration (in sec) by Repository, Build Duration (in seconds), Builds  By Status, Builds Failed, Builds Over Time, Builds Status by Repository, Builds Successful, Commits Summary, Deployments by state, Deployments Failed, Deployments Over Time, Deployments Successful, Last 15 Failed Builds, Last 15 Successful Builds, ‎Last 15 Successful Deployments, Last 20 Builds Summary, Modified Files, One Day Comparison, Outlier on Failed Builds, Projects with Environment  by Failed Deployments, Removed Files, Top Slowest Build Stages, Total number of Commits by branch, Total number of Commits by Project, Total number of Commits by Repository, Total number of Commits by User



## Parser:
```
| json "user.name","project.id","project.name","projec.web_url","object_attributes.created_at","object_attributes.title","object_attributes.url","labels[*].title","object_attributes.state","object_attributes.severity","object_attributes.action","repository.name","assignees[*].name","object_attributes.id" as user,project_id,project,project_url,created_date_time,title,issue_url,labels,state,severity,action,repo_name,assignees,issue_id nodrop
 
```
### Use Cases:
Added Files, Average Build Duration, Avg Duration to Merge Merge Requests by Project, Avg Duration to Merge Merge Requests by Repository, Avg Time to Close Issues by Project, Avg Time to Close Issues by Repository, Avg Time to Merge Merge Requests by Assignees, Build Duration (in sec)  by Build Name, Build Duration (in sec)  by Project, Build Duration (in sec)  by Stage Name, Build Duration (in sec) by Repository, Build Duration (in seconds), Builds  By Status, Builds Failed, Builds Over Time, Builds Status by Repository, Builds Successful, Commits Summary, Deployments by state, Deployments Failed, Deployments Over Time, Deployments Status by Project, Deployments Successful, Issues by Label, Issues by Label Over Time, Issues by Severity, Issues by Severity Over Time, Issues by State, Issues Closed, Issues Opened, Issues Opened Vs Closed, Issues Reopened, Last 10 Closed Merge Requests, Last 10 Open Merge Requests, Last 10 Opened and Unassigned Merge Requests, Last 10 ReOpened Merge Requests, Last 10 Review Comments on Merge Requests, Last 15 Failed Builds, ‎Last 15 Failed Deployments, Last 15 Opened and Unassigned Issues, Last 15 Opened Issues, Last 15 Reopened Issues, Last 15 Successful Builds, ‎Last 15 Successful Deployments, Last 20 Builds Summary, ‎Last 20 Deployments‎ Summary, Last 20 Issues Summary, Last 20 Merge Requests Summary, Merge Requests by Source Branch to Target Branch, Merge Requests by State, Merge Requests by Target Branch, Merge Requests Closed, Merge Requests Merged, Merge Requests Opened, Merge Requests Opened and Merged by Repository, Merged Merge Requests by Assignee Name, Modified Files, One Day Comparison, Open Issues by Assignee, Open Issues by Project, Open Issues by Repository, Opened Merge Requests by Creators, Opened Merge Requests by Project, Opened Merge Requests by Repository, Outlier of Failed Deployments, Outlier on Failed Builds, Projects with Environment  by Failed Deployments, Removed Files, Top 10 Merge Requests by Time taken to Merge (in hrs), Top 15 Issues by Time taken to Close, Top Slowest Build Stages, Total number of Commits by branch, Total number of Commits by Project, Total number of Commits by Repository, Total number of Commits by User



## Parser:
```
| parse regex field=branch_path ".*?\/.*?\/(?<branch>.*)"
|  parse regex field=group "(?<group>.+)\/.+" 
 
```
### Use Cases:
Added Files, Average Build Duration, Build Duration (in sec)  by Build Name, Build Duration (in sec)  by Project, Build Duration (in sec)  by Stage Name, Build Duration (in sec) by Repository, Build Duration (in seconds), Builds  By Status, Builds Failed, Builds Over Time, Builds Status by Repository, Builds Successful, Last 15 Failed Builds, Last 15 Successful Builds, Last 20 Builds Summary, Modified Files, Outlier on Failed Builds, Removed Files, Top Slowest Build Stages, Total number of Commits by branch, Total number of Commits by Repository



## Parser:
```
| parse regex field=branch_path ".*?\/.*?\/(?<branch>.*)"
| parse regex field=group "(?<group>.+)\/.+" 
 
```
### Use Cases:
Added Files, Average Build Duration, Build Duration (in sec)  by Build Name, Build Duration (in sec)  by Project, Build Duration (in sec)  by Stage Name, Build Duration (in sec) by Repository, Build Duration (in seconds), Builds  By Status, Builds Failed, Builds Over Time, Builds Status by Repository, Builds Successful, Last 15 Failed Builds, Last 15 Successful Builds, Last 20 Builds Summary, Modified Files, Outlier on Failed Builds, Removed Files, Top Slowest Build Stages, Total number of Commits by branch, Total number of Commits by Project, Total number of Commits by Repository



## Parser:
```
| parse regex field=group "(?<group>.+)\/.+"
| parse regex field=assignees_name "\"(?<assignee_name>[^\"]+)\"" multi
 
```
### Use Cases:
Added Files, Average Build Duration, Avg Time to Close Issues by Project, Avg Time to Close Issues by Repository, Build Duration (in sec)  by Build Name, Build Duration (in sec)  by Project, Build Duration (in sec)  by Stage Name, Build Duration (in sec) by Repository, Build Duration (in seconds), Builds  By Status, Builds Failed, Builds Over Time, Builds Status by Repository, Builds Successful, Commits Summary, Deployments by state, Deployments Failed, Deployments Over Time, Deployments Status by Project, Deployments Successful, Issues by Label, Issues by Label Over Time, Issues by Severity, Issues by Severity Over Time, Issues by State, Issues Closed, Issues Opened, Issues Opened Vs Closed, Issues Reopened, Last 10 Closed Merge Requests, Last 10 Open Merge Requests, Last 10 Opened and Unassigned Merge Requests, Last 10 ReOpened Merge Requests, Last 10 Review Comments on Merge Requests, Last 15 Failed Builds, ‎Last 15 Failed Deployments, Last 15 Opened and Unassigned Issues, Last 15 Opened Issues, Last 15 Reopened Issues, Last 15 Successful Builds, ‎Last 15 Successful Deployments, Last 20 Builds Summary, ‎Last 20 Deployments‎ Summary, Last 20 Issues Summary, Merge Requests by Source Branch to Target Branch, Merge Requests by State, Merge Requests by Target Branch, Merge Requests Closed, Merge Requests Merged, Merge Requests Opened, Merge Requests Opened and Merged by Repository, Merged Merge Requests by Assignee Name, Modified Files, One Day Comparison, Open Issues by Assignee, Open Issues by Project, Open Issues by Repository, Opened Merge Requests by Creators, Opened Merge Requests by Project, Opened Merge Requests by Repository, Outlier of Failed Deployments, Outlier on Failed Builds, Projects with Environment  by Failed Deployments, Removed Files, Top 15 Issues by Time taken to Close, Top Slowest Build Stages, Total number of Commits by branch, Total number of Commits by Project, Total number of Commits by Repository, Total number of Commits by User



## Parser:
```
| parse regex field=group "(?<group>.+)\/.+" 
 
```
### Use Cases:
Added Files, Average Build Duration, Avg Time to Close Issues by Project, Avg Time to Close Issues by Repository, Build Duration (in sec)  by Build Name, Build Duration (in sec)  by Project, Build Duration (in sec)  by Stage Name, Build Duration (in sec) by Repository, Build Duration (in seconds), Builds  By Status, Builds Failed, Builds Over Time, Builds Status by Repository, Builds Successful, Commits Summary, Deployments by state, Deployments Failed, Deployments Over Time, Deployments Status by Project, Deployments Successful, Issues by Label, Issues by Label Over Time, Issues by Severity, Issues by Severity Over Time, Issues by State, Issues Closed, Issues Opened, Issues Opened Vs Closed, Issues Reopened, Last 10 Closed Merge Requests, Last 10 Open Merge Requests, Last 10 Opened and Unassigned Merge Requests, Last 10 Review Comments on Merge Requests, Last 15 Failed Builds, ‎Last 15 Failed Deployments, Last 15 Opened and Unassigned Issues, Last 15 Opened Issues, Last 15 Reopened Issues, Last 15 Successful Builds, ‎Last 15 Successful Deployments, Last 20 Builds Summary, ‎Last 20 Deployments‎ Summary, Last 20 Issues Summary, Merge Requests by Source Branch to Target Branch, Merge Requests by State, Merge Requests by Target Branch, Merge Requests Closed, Merge Requests Merged, Merge Requests Opened, Merge Requests Opened and Merged by Repository, Merged Merge Requests by Assignee Name, Modified Files, One Day Comparison, Open Issues by Assignee, Open Issues by Project, Open Issues by Repository, Opened Merge Requests by Creators, Opened Merge Requests by Project, Opened Merge Requests by Repository, Outlier of Failed Deployments, Outlier on Failed Builds, Projects with Environment  by Failed Deployments, Removed Files, Top 15 Issues by Time taken to Close, Top Slowest Build Stages, Total number of Commits by branch, Total number of Commits by Project, Total number of Commits by Repository, Total number of Commits by User



## Parser:
```
| parse regex field=group "(?<group>.+)\/.+" 
| parse regex field=branch_path ".*?\/.*?\/(?<branch>.*)"
 
```
### Use Cases:
Added Files, Average Build Duration, Build Duration (in sec)  by Build Name, Build Duration (in sec)  by Project, Build Duration (in sec)  by Stage Name, Build Duration (in sec) by Repository, Build Duration (in seconds), Builds  By Status, Builds Failed, Builds Over Time, Builds Status by Repository, Builds Successful, Last 15 Failed Builds, Last 15 Successful Builds, Last 20 Builds Summary, Modified Files, Outlier on Failed Builds, Removed Files, Top Slowest Build Stages, Total number of Commits by branch, Total number of Commits by Project, Total number of Commits by Repository, Total number of Commits by User



## Parser:
```
| parse regex field=group "(?<group>.+)\/.+" 
| parse regex field=branch_path ".*?\/.*?\/(?<branch>.*)"
| parse regex field=added "\"(?<added_files>[^\"]+)\"" multi 
 
```
### Use Cases:
Added Files, Average Build Duration, Build Duration (in sec)  by Build Name, Build Duration (in sec)  by Project, Build Duration (in sec)  by Stage Name, Build Duration (in sec) by Repository, Build Duration (in seconds), Builds  By Status, Builds Failed, Builds Over Time, Builds Status by Repository, Builds Successful, Last 15 Failed Builds, Last 15 Successful Builds, Last 20 Builds Summary, Modified Files, Outlier on Failed Builds, Top Slowest Build Stages



## Parser:
```
| parse regex field=group "(?<group>.+)\/.+" 
| parse regex field=branch_path ".*?\/.*?\/(?<branch>.*)"
| parse regex field=modified "\"(?<modified_files>[^\"]+)\"" multi 
 
```
### Use Cases:
Average Build Duration, Build Duration (in sec)  by Build Name, Build Duration (in sec)  by Project, Build Duration (in sec)  by Stage Name, Build Duration (in sec) by Repository, Build Duration (in seconds), Builds  By Status, Builds Failed, Builds Over Time, Builds Status by Repository, Builds Successful, Last 15 Failed Builds, Last 15 Successful Builds, Last 20 Builds Summary, Modified Files, Outlier on Failed Builds, Top Slowest Build Stages



## Parser:
```
| parse regex field=group "(?<group>.+)\/.+" 
| parse regex field=branch_path ".*?\/.*?\/(?<branch>.*)"
| parse regex field=removed "\"(?<removed_files>[^\"]+)\"" multi 
 
```
### Use Cases:
Added Files, Average Build Duration, Build Duration (in sec)  by Build Name, Build Duration (in sec)  by Project, Build Duration (in sec)  by Stage Name, Build Duration (in sec) by Repository, Build Duration (in seconds), Builds  By Status, Builds Failed, Builds Over Time, Builds Status by Repository, Builds Successful, Last 15 Failed Builds, Last 15 Successful Builds, Last 20 Builds Summary, Modified Files, Outlier on Failed Builds, Removed Files, Top Slowest Build Stages


