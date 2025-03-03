# CircleCI
## Sumo Logic App For: CircleCI
The CircleCI app for Sumo Logic provides advanced views to track the performance and health of your continuous integration and deployment pipelines.
Docs Link: [CircleCI](https://circleci.com/docs/sumo-logic-integration/)

## Searches

### Log Searches

- **5 Most Recent Failed Jobs**: from Dashboard: CircleCI/CircleCI - Overview 
- **5 Most Recent Failed Workflows**: from Dashboard: CircleCI/CircleCI - Overview 
- **Average Job Runtime Per Day**: from Dashboard: CircleCI/CircleCI - Overview 
- **Daily Performance**: from Dashboard: CircleCI/CircleCI - Overview 
- **Job Health**: from Dashboard: CircleCI/CircleCI - Overview 
- **Jobs per day**: from Dashboard: CircleCI/CircleCI - Overview 
- **Jobs Ran Per Project**: from Dashboard: CircleCI/CircleCI - Overview 
- **Summary**: from Dashboard: CircleCI/CircleCI - Overview 
- **Top 10 longest running jobs**: from Dashboard: CircleCI/CircleCI - Overview 
- **Top 10 Longest Workflows (Averaged)**: from Dashboard: CircleCI/CircleCI - Overview 
- **Total Jobs**: from Dashboard: CircleCI/CircleCI - Overview

### Metric Searches


## Search Table

|app\_topic|search\_name|type|origin|search|
|:--|:--|:--|:--|:--|
|CircleCI|5 Most Recent Failed Jobs|Logs|CircleCI/CircleCI - Overview|\_sourceCategory = Labs/circleci\*  <br />\| json "project.name", "job.name", "job.status", "job.number", "happened\_at" as project, job, status, number, at<br />\| where project matches "{{project}}"<br />\| where status = "failed"<br />\| "❌" as status<br />\| count(at) as when by project, job, status, number, at<br />\| sort by at<br />\| parseDate(at, "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'") as at<br />\| formatDate(at, "yy-MM-dd HH:mm") as at<br />\| fields project, job, status, number, at<br />\| limit 5|
|CircleCI|5 Most Recent Failed Workflows|Logs|CircleCI/CircleCI - Overview|\_sourceCategory = Labs/circleci\*  <br />\| json "project.name", "workflow.name", "workflow.status", "happened\_at" as project, workflow, status, at<br />\| where project matches "{{project}}"<br />\| where status="failed"<br />\| "❌" as status<br />\| count(at) as when by project, workflow, status, at<br />\| sort by at<br />\| parseDate(at, "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'") as at<br />\| formatDate(at, "yy-MM-dd HH:mm") as at<br />\| fields project, workflow, status, at<br />\| limit 5 |
|CircleCI|Average Job Runtime Per Day|Logs|CircleCI/CircleCI - Overview|(\_sourceCategory = Labs/circleci\* )<br />\| json "type" \| where %type = "job-completed"<br />\| json "job.started\_at", "job.stopped\_at" as start, end<br />\| parseDate(start, "yyyy-MM-dd'T'HH:mm:ss.SSSXXX") as start<br />\| parseDate(end, "yyyy-MM-dd'T'HH:mm:ss.SSSXXX") as end<br />\| round((end - start) / 1000) as duration\_sec<br />\| json "project.name" as project<br />\| where project matches "{{project}}"<br />\| json "job.name" as job <br />\| where job matches "{{job}}"<br />\| timeslice 1d<br />\| avg(duration\_sec) as duration\_sec by job, project, \_timeslice \| round(duration\_sec)<br />\| transpose row \_timeslice column job, project|
|CircleCI|Daily Performance|Logs|CircleCI/CircleCI - Overview|\_sourceCategory = Labs/circleci\* <br />\| json field=\_raw "job.status" as status<br />\| json field=\_raw "project.name" as projectName\| where projectName matches "{{project}}"<br />\| withtime status<br />\| timeslice 1d<br />\| count by \_timeslice, status<br />\| transpose row \_timeslice column status|
|CircleCI|Job Health|Logs|CircleCI/CircleCI - Overview|\_sourceCategory = Labs/circleci\* <br />\| json "project.name", "job.status" as projectName, outcome<br />\| where projectName matches "{{project}}"<br />\| count as jobs by outcome|
|CircleCI|Jobs per day|Logs|CircleCI/CircleCI - Overview|\_sourceCategory = Labs/circleci\* <br />\| json "type" as type<br />\| where type = "job-completed"<br />\| json "job.id", "project.name" as jobID, project<br />\| withtime jobID<br />\| timeslice 1d<br />\| count by \_timeslice, project<br />\| transpose row \_timeslice column project|
|CircleCI|Jobs Ran Per Project|Logs|CircleCI/CircleCI - Overview|\_sourceCategory = Labs/circleci\*  <br />\| json "project.name", "job.name", "job.status" as project, job, status<br />\| where project matches "{{project}}"<br />\| count as jobs by project|
|CircleCI|Summary|Logs|CircleCI/CircleCI - Overview|\_sourceCategory = Labs/circleci\* <br />\| json field=\_raw "job.status" as result<br />\| json field=\_raw "project.name" as project<br />\| where project matches "\*"<br />\| count as jobs by project, result<br />\| transpose row project column result as failed, success<br />\| if(isNull(failed), 0, failed) as failed<br />\| if(isNull(success), 0, success) as success<br />\| format("%.1f %s",(success/(success + failed))\*100, "%") as health|
|CircleCI|Top 10 longest running jobs|Logs|CircleCI/CircleCI - Overview|(\_sourceCategory = Labs/circleci\* )<br />\| json "type"<br />\| where %type = "job-completed"<br />\| json "job.started\_at", "job.stopped\_at" as start, end<br />\| parseDate(start, "yyyy-MM-dd'T'HH:mm:ss.SSSXXX") as start<br />\| parseDate(end, "yyyy-MM-dd'T'HH:mm:ss.SSSXXX") as end<br />\| round((end - start) / 1000) as duration\_sec<br />\| json field=\_raw "project.name" as project<br />\| where project matches "{{project}}"<br />\| json field=\_raw "job.name" as job<br />\| avg(duration\_sec) as Avg\_Duration\_Seconds by project, job<br />\| round(Avg\_Duration\_Seconds)<br />\| sort by Avg\_Duration\_Seconds<br />\| limit 10|
|CircleCI|Top 10 Longest Workflows (Averaged)|Logs|CircleCI/CircleCI - Overview|\_sourceCategory = Labs/circleci\*  <br />\| json "type", "project.name", "workflow.name", "workflow.created\_at", "workflow.stopped\_at" as type, project, workflow, created, stopped <br />\| where project matches "{{project}}"<br />\| where %type = "workflow-completed" <br />\| parseDate(stopped, "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'") as d1 <br />\| parseDate(created, "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'") as d2 <br />\| (d1 - d2) / 1000 / 60 as minutes<br />\| avg(minutes) as minutes by workflow, project \| round(minutes, 2) as minutes \| format("%.2f", minutes) as minutes \| sort by minutes \|limit 5|
|CircleCI|Total Jobs|Logs|CircleCI/CircleCI - Overview|\_sourceCategory = Labs/circleci\*  <br />\| json "project.name" as project<br />\| where project matches "{{project}}"<br />\| json "job.number"<br />\| count|

