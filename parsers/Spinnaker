# Parsers For Spinnaker

## Parser:
```
| json "content.uri" as content_uri
| parse regex field=content_uri "\/applications\/(?<application>.+?)/.+"
```
### Use Cases:
Active Apps



## Parser:
```
| json field=_raw  "content.execution.name", "details.type"as pipeline, logtype nodrop 
| json field=_raw "$['content']['context']['deploy.account.name']" as cluster
```
### Use Cases:
Active Apps, Active Pipelines, Active Users, Activity by App, API Calls by Cluster, API Calls by Pipeline, API Calls by User



## Parser:
```
| json field=_raw "content.execution.authentication.user" as User | if (isNull(%User), "spinnaker",user) as user
```
### Use Cases:
Active Apps, Active Users, Activity by App, API Calls by Pipeline, API Calls by User



## Parser:
```
| json field=_raw "content.execution.name" as pipeline
```
### Use Cases:
Active Apps, Active Pipelines, Active Users, Activity by App, API Calls by Cluster, API Calls by Pipeline, API Calls by User



## Parser:
```
| json field=_raw "content.execution.status","content.execution.application","details.type","content.execution.name" as status,application,logType,pipeline nodrop
```
### Use Cases:
Active Apps, Active Clusters, Active Pipelines, Active Users, Activity by App, API Calls by Cluster, API Calls by Pipeline, API Calls by User, Canaries, Distinct User by Day, Errors, Failed Tasks, Manual Judgments, Pipeline Execution History, Pipeline Execution History Comparison, Pipelines Complete, Pipelines Executed by Name, Pipelines Failed (not Cancelled), Pipelines Trigger Type, RollBacks, Stage History, User Activity



## Parser:
```
| json field=_raw "content.execution.status","content.execution.application","details.type","content.execution.name" as status,application,logType,pipeline nodrop
| parse regex "deploy.account.name\"\:\"(?<cluster>.+?)\".+"
```
### Use Cases:
Active Apps, Active Clusters, Active Pipelines, Active Users, Activity by App, API Calls by Cluster, API Calls by Pipeline, API Calls by User



## Parser:
```
| json field=_raw "content.execution.status","content.execution.application","details.type","content.execution.name" as status,application,logType,pipeline nodrop 
```
### Use Cases:
Active Apps, Active Clusters, Active Pipelines, Active Users, Activity by App, API Calls by Cluster, API Calls by Pipeline, API Calls by User, Errors, Failed Tasks, Pipeline Execution History, Pipeline Execution History Comparison, Pipelines Complete, Pipelines Executed by Name, Pipelines Failed (not Cancelled), Stage History



## Parser:
```
| json field=_raw "content.execution.status","content.execution.application","details.type","content.execution.name" as status,application,logType,pipeline nodrop 
| json field=_raw "content.context.exception.details.errors" as error | where error != "[]"
```
### Use Cases:
Active Apps, Active Clusters, Active Pipelines, Active Users, Activity by App, API Calls by Cluster, API Calls by Pipeline, API Calls by User, Errors, Pipelines Complete



## Parser:
```
| json field=_raw "content.execution.status","content.execution.application","details.type","content.execution.name" as status,application,logType,pipeline nodrop | where status != "RUNNING" and logType contains "orca:pipeline"
```
### Use Cases:
Active Apps, Active Clusters, Active Pipelines, Active Users, Activity by App, API Calls by Cluster, API Calls by Pipeline, API Calls by User, Errors, Failed Tasks, Pipeline Execution History, Pipeline Execution History Comparison, Pipelines Complete, Pipelines Executed by Name, Pipelines Failed (not Cancelled)



## Parser:
```
| json field=_raw "content.execution.status","content.execution.application","details.type","content.execution.name","content.context.exception.operation" as status,application,logType,pipeline, task nodrop 
```
### Use Cases:
Active Apps, Active Clusters, Active Pipelines, Active Users, Activity by App, API Calls by Cluster, API Calls by Pipeline, API Calls by User, Errors, Failed Tasks, Pipeline Execution History Comparison, Pipelines Complete, Pipelines Executed by Name, Pipelines Failed (not Cancelled)



## Parser:
```
| json field=_raw "content.execution.status","content.execution.application","details.type","content.execution.name","content.execution.authentication.user" as status,application,logType,pipeline,user2 nodrop
```
### Use Cases:
Active Apps, Active Clusters, Active Pipelines, Active Users, Activity by App, API Calls by Cluster, API Calls by Pipeline, API Calls by User, Canaries, Distinct User by Day, Errors, Failed Tasks, Manual Judgments, Pipeline Execution History, Pipeline Execution History Comparison, Pipeline Runs by User, Pipelines Complete, Pipelines Executed by Name, Pipelines Failed (not Cancelled), Pipelines Trigger Type, RollBacks, Stage History, User Activity



## Parser:
```
| json field=_raw "content.execution.status","content.execution.application","details.type","content.execution.name","content.execution.authentication.user","content.execution.trigger.type" as status,application,logType,pipeline,user,triggerType nodrop
```
### Use Cases:
Active Apps, Active Clusters, Active Pipelines, Active Users, Activity by App, API Calls by Cluster, API Calls by Pipeline, API Calls by User, Errors, Failed Tasks, Pipeline Execution History, Pipeline Execution History Comparison, Pipelines Complete, Pipelines Executed by Name, Pipelines Failed (not Cancelled), Pipelines Trigger Type, Stage History



## Parser:
```
| json field=_raw "content.execution.status","content.execution.application","details.type","content.execution.name","content.execution.trigger.type","content.execution.authentication.user" as status,application,logType,pipeline, triggerType, user nodrop 
```
### Use Cases:
Active Apps, Active Clusters, Active Pipelines, Active Users, Activity by App, API Calls by Cluster, API Calls by Pipeline, API Calls by User, Errors, Pipelines Complete, Pipelines Executed by Name, Pipelines Failed (not Cancelled)



## Parser:
```
| json field=_raw "content.execution.status","content.execution.application","details.type","content.execution.name","content.user" as status,application,logType,pipeline,user nodrop
```
### Use Cases:
Active Apps, Active Clusters, Active Pipelines, Active Users, Activity by App, API Calls by Cluster, API Calls by Pipeline, API Calls by User, Distinct User by Day, Errors, Failed Tasks, Manual Judgments, Pipeline Execution History, Pipeline Execution History Comparison, Pipelines Complete, Pipelines Executed by Name, Pipelines Failed (not Cancelled), Pipelines Trigger Type, Stage History, User Activity



## Parser:
```
| json field=_raw "content.execution.status","content.execution.application","details.type","content.execution.name"as status,application,logType,pipeline nodrop 
```
### Use Cases:
Active Apps, Active Clusters, Active Pipelines, Active Users, Activity by App, API Calls by Cluster, API Calls by Pipeline, API Calls by User, Errors, Pipelines Complete, Pipelines Failed (not Cancelled)



## Parser:
```
| json field=_raw "content.execution.type" as type | where type="PIPELINE"
| json field=_raw "content.execution.name" as Pipeline
```
### Use Cases:
Active Apps, Active Users, API Calls by Pipeline



## Parser:
```
| json field=_raw "content.uri"  as content_uri
| parse regex field=content_uri "\/applications\/(?<application>.+?)/.+"
```
### Use Cases:
Active Apps, Active Clusters, Active Pipelines, Active Users, Activity by App, API Calls by Cluster, API Calls by Pipeline, API Calls by User



## Parser:
```
| json field=_raw "content.user" as user
```
### Use Cases:
Active Apps, Active Clusters, Active Pipelines, Active Users, Activity by App, API Calls by Cluster, API Calls by Pipeline, API Calls by User



## Parser:
```
| json field=_raw "details.type" as type
| json field=_raw "content.uri"  as content_uri
| parse regex field=content_uri "\/applications\/(?<application>.+?)/.+"
```
### Use Cases:
Active Apps, Active Users, Activity by App, API Calls by Pipeline



## Parser:
```
| parse regex "deploy.account.name\"\:\"(?<cluster>.+?)\".+"
```
### Use Cases:
Active Apps, Active Clusters, Active Pipelines, Active Users, Activity by App, API Calls by Cluster, API Calls by Pipeline, API Calls by User


