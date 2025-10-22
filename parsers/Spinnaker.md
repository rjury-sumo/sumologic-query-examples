# Parsers For Spinnaker

**Spinnaker/Overview/Active Apps**
```
_sourceCategory={{Logsdatasource}}  application
| json field=_raw "content.uri"  as content_uri
| where content_uri contains "/applications/"
| parse regex field=content_uri "\/applications\/(?<application>.+?)/.+"
```

**Spinnaker/Overview/Active Clusters**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "content.execution.status","content.execution.application","details.type","content.execution.name" as status,application,logType,pipeline nodrop
| parse regex "deploy.account.name\"\:\"(?<cluster>.+?)\".+"
```

**Spinnaker/Overview/Active Pipelines**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "content.execution.name" as pipeline
```

**Spinnaker/Overview/Active Users**
```
_sourceCategory={{Logsdatasource}}  content user 
| json field=_raw "content.user" as user
```

**Spinnaker/Overview/Activity by App**
```
_sourceCategory={{Logsdatasource}}  application
| json field=_raw "details.type" as type
| json field=_raw "content.uri"  as content_uri
| where content_uri contains "/applications/"
| parse regex field=content_uri "\/applications\/(?<application>.+?)/.+"
```

**Spinnaker/Overview/API Calls by Cluster**
```
(_sourceCategory={{Logsdatasource}} ) orca task 
| json field=_raw  "content.execution.name", "details.type"as pipeline, logtype nodrop 
| json field=_raw "$['content']['context']['deploy.account.name']" as cluster
```

**Spinnaker/Overview/API Calls by Pipeline**
```
_sourceCategory={{Logsdatasource}}  pipeline content execution type 
| json field=_raw "content.execution.type" as type | where type="PIPELINE"
| json field=_raw "content.execution.name" as Pipeline
```

**Spinnaker/Overview/API Calls by User**
```
_sourceCategory={{Logsdatasource}}  authentication user 
| json field=_raw "content.execution.authentication.user" as User | if (isNull(%User), "spinnaker",user) as user
```

**Spinnaker/Pipelines/Errors**
```
_sourceCategory={{Logsdatasource}}  content  context exception details errors
| json field=_raw "content.execution.status","content.execution.application","details.type","content.execution.name" as status,application,logType,pipeline nodrop 
| json field=_raw "content.context.exception.details.errors" as error | where error != "[]"
```

**Spinnaker/Pipelines/Failed Tasks**
```
_sourceCategory={{Logsdatasource}}  orca task failed content context exception operation
| json field=_raw "content.execution.status","content.execution.application","details.type","content.execution.name","content.context.exception.operation" as status,application,logType,pipeline, task nodrop 
```

**Spinnaker/Pipelines/Pipeline Execution History**
```
_sourceCategory={{Logsdatasource}}  orca pipeline
| json field=_raw "content.execution.status","content.execution.application","details.type","content.execution.name" as status,application,logType,pipeline nodrop | where status != "RUNNING" and logType contains "orca:pipeline"
```

**Spinnaker/Pipelines/Pipeline Execution History Comparison**
```
_sourceCategory={{Logsdatasource}}  orca pipeline
| json field=_raw "content.execution.status","content.execution.application","details.type","content.execution.name" as status,application,logType,pipeline nodrop
```

**Spinnaker/Pipelines/Pipelines Complete**
```
_sourceCategory={{Logsdatasource}}  orca pipeline complete
| json field=_raw "content.execution.status","content.execution.application","details.type","content.execution.name"as status,application,logType,pipeline nodrop 
```

**Spinnaker/Pipelines/Pipelines Executed by Name**
```
_sourceCategory={{Logsdatasource}}   orca pipeline starting
| json field=_raw "content.execution.status","content.execution.application","details.type","content.execution.name","content.execution.trigger.type","content.execution.authentication.user" as status,application,logType,pipeline, triggerType, user nodrop 
```

**Spinnaker/Pipelines/Pipelines Failed (not Cancelled)**
```
_sourceCategory={{Logsdatasource}}   orca pipeline failed 
| json field=_raw "content.execution.status","content.execution.application","details.type","content.execution.name"as status,application,logType,pipeline nodrop 
```

**Spinnaker/Pipelines/Stage History**
```
_sourceCategory={{Logsdatasource}}  orca stage details type
| json field=_raw "content.execution.status","content.execution.application","details.type","content.execution.name" as status,application,logType,pipeline nodrop 
```

**Spinnaker/User Activity/Canaries**
```
_sourceCategory={{Logsdatasource}}  type runCanary
| json field=_raw "content.execution.status","content.execution.application","details.type","content.execution.name" as status,application,logType,pipeline nodrop
```

**Spinnaker/User Activity/Distinct User by Day**
```
_sourceCategory={{Logsdatasource}} 
| json field=_raw "content.execution.status","content.execution.application","details.type","content.execution.name","content.user" as status,application,logType,pipeline,user nodrop
```

**Spinnaker/User Activity/Manual Judgments**
```
_sourceCategory={{Logsdatasource}}  "manualJudgment" details type
| json field=_raw "content.execution.status","content.execution.application","details.type","content.execution.name" as status,application,logType,pipeline nodrop
```

**Spinnaker/User Activity/Pipeline Runs by User**
```
_sourceCategory={{Logsdatasource}}  orca pipeline complete
| json field=_raw "content.execution.status","content.execution.application","details.type","content.execution.name","content.execution.authentication.user" as status,application,logType,pipeline,user2 nodrop
```

**Spinnaker/User Activity/Pipelines Trigger Type**
```
_sourceCategory={{Logsdatasource}}  and  "jenkins" "orca:pipeline:starting" 
| json field=_raw "content.execution.status","content.execution.application","details.type","content.execution.name","content.execution.authentication.user","content.execution.trigger.type" as status,application,logType,pipeline,user,triggerType nodrop
```

**Spinnaker/User Activity/RollBacks**
```
_sourceCategory={{Logsdatasource}}  and "undoRolloutManifest"
| json field=_raw "content.execution.status","content.execution.application","details.type","content.execution.name" as status,application,logType,pipeline nodrop
```

**Spinnaker/User Activity/User Activity**
```
_sourceCategory={{Logsdatasource}}  content user
| json field=_raw "content.execution.status","content.execution.application","details.type","content.execution.name","content.user" as status,application,logType,pipeline,user nodrop
```


