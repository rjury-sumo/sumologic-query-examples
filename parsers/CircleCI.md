# Parsers For CircleCI

## Parser:
```
| json "project.name" as project
| json "job.number"
 `n```
### Use Cases:
Total Jobs



## Parser:
```
| json "project.name", "job.name", "job.status" as project, job, status
 `n```
### Use Cases:
Job Health, Jobs Ran Per Project, Top 10 Longest Workflows (Averaged), Total Jobs



## Parser:
```
| json "project.name", "job.name", "job.status", "job.number", "happened_at" as project, job, status, number, at
 `n```
### Use Cases:
5 Most Recent Failed Jobs, 5 Most Recent Failed Workflows, Daily Performance, Job Health, Jobs Ran Per Project, Summary, Top 10 Longest Workflows (Averaged), Total Jobs



## Parser:
```
| json "project.name", "job.status" as projectName, outcome
 `n```
### Use Cases:
Job Health, Total Jobs



## Parser:
```
| json "project.name", "workflow.name", "workflow.status", "happened_at" as project, workflow, status, at
 `n```
### Use Cases:
5 Most Recent Failed Workflows, Daily Performance, Job Health, Jobs Ran Per Project, Summary, Top 10 Longest Workflows (Averaged), Total Jobs



## Parser:
```
| json "type"
| json "job.started_at", "job.stopped_at" as start, end
| json field=_raw "project.name" as project
| json field=_raw "job.name" as job
 `n```
### Use Cases:
5 Most Recent Failed Jobs, 5 Most Recent Failed Workflows, Daily Performance, Job Health, Jobs per day, Jobs Ran Per Project, Summary, Top 10 longest running jobs, Top 10 Longest Workflows (Averaged), Total Jobs



## Parser:
```
| json "type" | where %type = "job-completed"
| json "job.started_at", "job.stopped_at" as start, end
| json "project.name" as project
| json "job.name" as job 
 `n```
### Use Cases:
5 Most Recent Failed Jobs, 5 Most Recent Failed Workflows, Average Job Runtime Per Day, Daily Performance, Job Health, Jobs per day, Jobs Ran Per Project, Summary, Top 10 longest running jobs, Top 10 Longest Workflows (Averaged), Total Jobs



## Parser:
```
| json "type" as type
| json "job.id", "project.name" as jobID, project
 `n```
### Use Cases:
5 Most Recent Failed Jobs, 5 Most Recent Failed Workflows, Daily Performance, Job Health, Jobs per day, Jobs Ran Per Project, Summary, Top 10 Longest Workflows (Averaged), Total Jobs



## Parser:
```
| json "type", "project.name", "workflow.name", "workflow.created_at", "workflow.stopped_at" as type, project, workflow, created, stopped 
 `n```
### Use Cases:
Job Health, Top 10 Longest Workflows (Averaged), Total Jobs



## Parser:
```
| json field=_raw "job.status" as result
| json field=_raw "project.name" as project
 `n```
### Use Cases:
Job Health, Jobs Ran Per Project, Summary, Top 10 Longest Workflows (Averaged), Total Jobs



## Parser:
```
| json field=_raw "job.status" as status
| json field=_raw "project.name" as projectName| where projectName matches "{{project}}"
 `n```
### Use Cases:
Daily Performance, Job Health, Jobs Ran Per Project, Summary, Top 10 Longest Workflows (Averaged), Total Jobs


