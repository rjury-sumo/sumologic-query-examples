# Parsers For CircleCI

**CircleCI/Overview/5 Most Recent Failed Jobs**
```
_sourceCategory = Labs/circleci*  
| json "project.name", "job.name", "job.status", "job.number", "happened_at" as project, job, status, number, at
```

**CircleCI/Overview/5 Most Recent Failed Workflows**
```
_sourceCategory = Labs/circleci*  
| json "project.name", "workflow.name", "workflow.status", "happened_at" as project, workflow, status, at
```

**CircleCI/Overview/Average Job Runtime Per Day**
```
(_sourceCategory = Labs/circleci* )
| json "type" | where %type = "job-completed"
| json "job.started_at", "job.stopped_at" as start, end
| parseDate(start, "yyyy-MM-dd'T'HH:mm:ss.SSSXXX") as start
| parseDate(end, "yyyy-MM-dd'T'HH:mm:ss.SSSXXX") as end
| round((end - start) / 1000) as duration_sec
| json "project.name" as project
| where project matches "{{project}}"
| json "job.name" as job 
```

**CircleCI/Overview/Daily Performance**
```
_sourceCategory = Labs/circleci* 
| json field=_raw "job.status" as status
| json field=_raw "project.name" as projectName| where projectName matches "{{project}}"
```

**CircleCI/Overview/Job Health**
```
_sourceCategory = Labs/circleci* 
| json "project.name", "job.status" as projectName, outcome
```

**CircleCI/Overview/Jobs per day**
```
_sourceCategory = Labs/circleci* 
| json "type" as type
| where type = "job-completed"
| json "job.id", "project.name" as jobID, project
```

**CircleCI/Overview/Jobs Ran Per Project**
```
_sourceCategory = Labs/circleci*  
| json "project.name", "job.name", "job.status" as project, job, status
```

**CircleCI/Overview/Summary**
```
_sourceCategory = Labs/circleci* 
| json field=_raw "job.status" as result
| json field=_raw "project.name" as project
```

**CircleCI/Overview/Top 10 longest running jobs**
```
(_sourceCategory = Labs/circleci* )
| json "type"
| where %type = "job-completed"
| json "job.started_at", "job.stopped_at" as start, end
| parseDate(start, "yyyy-MM-dd'T'HH:mm:ss.SSSXXX") as start
| parseDate(end, "yyyy-MM-dd'T'HH:mm:ss.SSSXXX") as end
| round((end - start) / 1000) as duration_sec
| json field=_raw "project.name" as project
| where project matches "{{project}}"
| json field=_raw "job.name" as job
```

**CircleCI/Overview/Top 10 Longest Workflows (Averaged)**
```
_sourceCategory = Labs/circleci*  
| json "type", "project.name", "workflow.name", "workflow.created_at", "workflow.stopped_at" as type, project, workflow, created, stopped 
```

**CircleCI/Overview/Total Jobs**
```
_sourceCategory = Labs/circleci*  
| json "project.name" as project
| where project matches "{{project}}"
| json "job.number"
```


