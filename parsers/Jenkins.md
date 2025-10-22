# Parsers For Jenkins

**Jenkins/Audit/Configuration Change**
```
_sourceCategory={{Logsdatasource}}  Audit_Event
| _sourceHost as Master
| json "userName", "auditEventType", "userId", "message", "eventTime" as UserName, Event, UserId, Message, Time nodrop
| where Event in ("Config_Change") and userName matches "{{UserName}}" and userId matches "{{UserId}}" and Master matches "{{Master}}"
| json "fileDetails.Current_File_Data", "fileDetails.Old_File_Data" as Current_File_Data, Old_File_Data nodrop
```

**Jenkins/Audit/Jenkins Item Change**
```
_sourceCategory={{Logsdatasource}}  Audit_Event
| _sourceHost as Master
| json "userName", "auditEventType", "userId", "message", "eventTime" as UserName, Event, UserId, Message, Time nodrop
```

**Jenkins/Audit/Job Activities**
```
_sourceCategory={{Logsdatasource}}  Audit_Event
| _sourceHost as Master
| json "userName", "auditEventType", "userId", "message", "eventTime" as UserName, Event, UserId, Message, Time nodrop
```

**Jenkins/Audit/Jobs Trend**
```
_sourceCategory={{Logsdatasource}}  Audit_Event
| _sourceHost as Master
| json "userName", "auditEventType", "userId", "message", "eventTime" as UserName, Event, UserId, Message, Time nodrop
```

**Jenkins/Audit/Most Changed Configuration**
```
_sourceCategory={{Logsdatasource}}  Audit_Event
| _sourceHost as Master
| json "userName", "auditEventType", "userId", "message", "eventTime" as UserName, Event, UserId, Message, Time nodrop
| where Event in ("Config_Change") and userName matches "{{UserName}}" and userId matches "{{UserId}}" and Master matches "{{Master}}"
| parse regex "file (?<Item_Name>.*?).xml"
```

**Jenkins/Audit/Most changed Configuration by Job**
```
_sourceCategory={{Logsdatasource}}  Audit_Event
| _sourceHost as Master
| json "userName", "auditEventType", "userId", "message", "eventTime" as UserName, Event, UserId, Message, Time nodrop
| where Event in ("Config_Change") and userName matches "{{UserName}}" and userId matches "{{UserId}}" and Master matches "{{Master}}"
| parse regex "file (?<ItemName>.*?).xml"
| concat(ItemName, ".xml") as ItemName
| where ItemName matches "jobs/*"
| parse field=ItemName "jobs/*/config.xml" as JobName
```

**Jenkins/Audit/User Authentication**
```
_sourceCategory={{Logsdatasource}}  Audit_Event
| _sourceHost as Master
| json "userName", "auditEventType", "userId", "message", "eventTime" as UserName, Event, UserId, Message, Time nodrop
```

**Jenkins/Audit/User Events**
```
_sourceCategory={{Logsdatasource}}  Audit_Event
| _sourceHost as Master
| json "userName", "auditEventType", "userId", "message", "eventTime" as UserName, Event, UserId, Message, Time nodrop
```

**Jenkins/Build Information/Build Information**
```
_sourceCategory={{Logsdatasource}}  Job_Status {{Name}}
| _sourceHost as Master
| json "name", "number", "hudsonVersion", "label", "result", "description", "jobType", "user", "nodeName" as Name, number, hudsonVersion, Label, Result, Description, JobType, User, NodeName nodrop
| where Name matches "{{Name}}" AND Number matches "{{Number}}" and Master matches "{{Master}}"
| if(Result matches "SUCCESS", ":white-heavy-check-mark:", ":prohibited:") as icon
| lookup utf as Result from https://s3.amazonaws.com/sumologic-app-data/emoji.csv on shortname=icon
```

**Jenkins/Build Information/Change Log Information**
```
_sourceCategory={{Logsdatasource}}  Scm_Status {{Name}}
| _sourceHost as Master
| json "jobName", "buildNumber", "changeLog" as Name, Number, Commit
```

**Jenkins/Build Information/Error, Warning, Exception**
```
_sourceCategory={{Logsdatasource}} 
| _sourceHost as Master
| _sourceName as SourceName
| where SourceName matches "{{Name}}#{{Number}}*" and Master matches "{{Master}}"
| parse field=_raw "[*] *" as Time, %"Log Message"
```

**Jenkins/Build Information/Failed Tests**
```
_sourceCategory={{Logsdatasource}}  Test_Result {{Name}}
| _sourceHost as Master
| json "name", "number" as Name, Number
| where Name matches "{{Name}}" AND Number matches "{{Number}}" and Master matches "{{Master}}"
| json "testResult" as statusValues
| parse regex field=statusValues "(?<TestResult>\{[^\}]+\})" multi
| json auto field=TestResult
```

**Jenkins/Build Information/Job Parameters**
```
_sourceCategory={{Logsdatasource}}  Job_Status {{Name}}
| _sourceHost as Master
| json "name", "number", "jobMetaData", "jobStartTime", "triggerCauses" as Name, Number, jobMetaData, jobStartTime, triggerCauses nodrop
```

**Jenkins/Build Information/Job Run Duration**
```
_sourceCategory={{Logsdatasource}}  Job_Status {{Name}}
| _sourceHost as Master
| json "name", "number", "jobRunDuration" as Name, Number, Duration
```

**Jenkins/Build Information/Job URLs**
```
_sourceCategory={{Logsdatasource}}  Job_Status {{Name}}
| _sourceHost as Master
| json "name", "number", "jobBuildURL", "upstreamJobURL" as Name, Number, URL, UpStreamURL
| where Name matches "{{Name}}" AND Number matches "{{Number}}" and Master matches "{{Master}}"
| if(isEmpty(URL) ,"", tourl(URL, concat("Build URL - ", name))) as %"Build URL"
| parse field=URL "*://*/" as domain, url_base nodrop
```

**Jenkins/Build Information/Most Recent Console Logs**
```
_sourceCategory={{Logsdatasource}} 
| _sourceHost as Master
| _sourceName as SourceName
| where SourceName matches "{{Name}}#{{Number}}*" and Master matches "{{Master}}"
| parse field=_raw "[*] *" as Time, %"Log Message"
```

**Jenkins/Build Information/Pipeline Stage Details**
```
_sourceCategory={{Logsdatasource}}  Pipeline_Stages {{Name}}
| _sourceHost as Master
| json "name", "number" as Name, Number
| where Name matches "{{Name}}" AND Number matches "{{Number}}" and Master matches "{{Master}}"
| json "stages" as StagesPipeline   
| parse regex field = StagesPipeline "(?<json_added_blob>\{[^\}]+(?:\}\}|\}))" multi
| json field=json_added_blob "id", "stageId", "name", "startTime", "duration", "status", "steps", "error" as ID, %"Stage ID", %"Stage Name", %"Start Time", %"Stage Duration", %"Stage Status", %"Stage Steps", %"Stage Error" nodrop
```

**Jenkins/Build Information/SCM Information**
```
_sourceCategory={{Logsdatasource}}  Scm_Status {{Name}}
| _sourceHost as Master
| json "jobName", "buildNumber", "scmURLs", "branches", "scmType", "revision" as Name, Number, scmURLs, branches, scmType, revision
```

**Jenkins/Build Information/Status**
```
_sourceCategory={{Logsdatasource}}  Job_Status {{Name}}
| _sourceHost as Master
| json "name", "number", "result" as Name, Number, Result
```

**Jenkins/Build Information/Top 10 Slowest Tests**
```
_sourceCategory={{Logsdatasource}}  Test_Result {{Name}}
| _sourceHost as Master
| json "name", "number" as Name, Number
| where Name matches "{{Name}}" AND Number matches "{{Number}}" and Master matches "{{Master}}"
| json "testResult" as statusValues
| parse regex field=statusValues "(?<TestResult>\{[^\}]+\})" multi
| json auto field=TestResult
```

**Jenkins/Build Information/Top 5 Slowest Stages**
```
_sourceCategory={{Logsdatasource}}  Pipeline_Stages {{Name}}
| _sourceHost as Master
| json "name", "number" as Name, Number
| where Name matches "{{Name}}" AND Number matches "{{Number}}" and Master matches "{{Master}}"
| json "stages" as StagesPipeline
| parse regex field = StagesPipeline "(?<json_added_blob>\{[^\}]+(?:\}\}|\}))" multi
| json field=json_added_blob "id", "stageId", "name", "startTime", "duration", "status", "steps", "error" as ID, %"Stage ID", %"Stage Name", %"Start Time", %"Stage Duration", %"Stage Status", %"Stage Steps", %"Stage Error" nodrop
```

**Jenkins/Console Logs by Stages/Console Logs by Stages**
```
_sourceCategory={{Logsdatasource}}  _sourceName={{Job_Name}}#*
| parse field=_raw "[*] *" as Log_Time, Log_Message
| trim (Log_Message)
| parse regex field=_sourceName "(?<Job_Name>.*?)#(?<Build_Number>[0-9]+)(?<Stage_Name>.*)" nodrop
```

**Jenkins/Job Information/Average Run Duration**
```
_sourceCategory={{Logsdatasource}}  Job_Status {{Name}}
| _sourceHost as Master
| json "name", "jobRunDuration", "result" as Name, Duration, Result
```

**Jenkins/Job Information/Common Log Errors**
```
_sourceCategory={{Logsdatasource}} 
| _sourceHost as Master
| _sourceName as SourceName
| where SourceName matches "{{Name}}#*"
| parse field=_raw "[*] *" as Time, %"Log Message"
```

**Jenkins/Job Information/Failures**
```
_sourceCategory={{Logsdatasource}}  Job_Status {{Name}}
| _sourceHost as Master
| json "name", "result" as Name, Result
```

**Jenkins/Job Information/Job Duration**
```
_sourceCategory={{Logsdatasource}}  Job_Status {{Name}}
| _sourceHost as Master
| json "name", "number", "result", "jobRunDuration" as Name, Number, Result, Duration
```

**Jenkins/Job Information/Job Status Percentage**
```
_sourceCategory={{Logsdatasource}}  Job_Status {{Name}}
| _sourceHost as Master
| json "name" as Name
| where Name matches "{{Name}}"
| json "result" as Result
```

**Jenkins/Job Information/Job URL**
```
_sourceCategory={{Logsdatasource}}  Job_Status {{Name}}
| _sourceHost as Master
| json "name" as Name
| where Name matches "{{Name}}" 
| first(_raw) as message by Name, Master
| parse regex field=message "\"(?<Key>.*?)\":(?<Value>.*?),"  multi
| where key in ("jobBuildURL", "upstreamJobURL", "hudsonVersion")
| json field=message "jobBuildURL", "number" as URL, number
| replace(URL, concat("/",number,"/"), "") as URL
| concat(URL, "/configure") as Config_URL
| if(key="hudsonVersion" , Config_URL, Value) as Value
| replace(Value, "\"", "") as Value
| parse field=URL "*://*/" as domain, url_base nodrop
```

**Jenkins/Job Information/Max Run Duration**
```
_sourceCategory={{Logsdatasource}}  Job_Status {{Name}}
| _sourceHost as Master
| json "name", "result", "jobRunDuration" as Name, Result, Duration
```

**Jenkins/Job Information/Recent Builds**
```
_sourceCategory={{Logsdatasource}}  Job_Status {{Name}}
| _sourceHost as Master
| json "jobRunDuration", "number", "result", "name", "jobBuildURL" as %"Duration in minutes", Number, Result, Name, URL
| where Name matches "{{Name}}"
| tourl(URL, Name) as Name
| if(Result matches "SUCCESS", ":white-heavy-check-mark:", ":prohibited:") as icon
| lookup utf as Result from https://s3.amazonaws.com/sumologic-app-data/emoji.csv on shortname=icon
```

**Jenkins/Job Information/Recent Commits**
```
_sourceCategory={{Logsdatasource}}  Scm_Status {{Name}}
| _sourceHost as Master
| json "jobName" as Name
| where Name matches "{{Name}}"
| json "eventTime", "changeLog" as Time, Commit
```

**Jenkins/Job Information/Recent Configuration Changes**
```
_sourceCategory={{Logsdatasource}}  Config_Change {{Name}}
| _sourceHost as Master
| json "userId", "userName", "eventTime", "message", "fileDetails.Old_File_Data", "fileDetails.Current_File_Data" as %"User Id", %"User Name", Time, %"Config Message", %"Old File Data", %"Current File Data" nodrop
| parse field=%"Config Message" "* changed configuration for the file jobs/*/config.xml." as User, Name
```

**Jenkins/Job Information/Recent Console Logs**
```
_sourceCategory={{Logsdatasource}} 
| _sourceHost as Master
| _sourceName as SourceName
| where SourceName matches "{{Name}}#*" 
| parse field=_raw "[*] *" as Time, %"Log Message"
```

**Jenkins/Job Information/Result % by Execution Node**
```
_sourceCategory={{Logsdatasource}}  Job_Status {{Name}}
| _sourceHost as Master
| json "name" as Name
| where Name matches "{{Name}}"
| json "nodeName", "result" as %"Node Name", Result
```

**Jenkins/Job Information/Success Rate**
```
_sourceCategory={{Logsdatasource}}  Job_Status
| _sourceHost as Master
| json "name", "result" as Name, Result
```

**Jenkins/Job Information/Test Cases (Averages)**
```
_sourceCategory={{Logsdatasource}}  Job_Status {{Name}}
| _sourceHost as Master
| json "name", "number", "result" as Name, Number, Result
| where name matches "{{Name}}"
| json "testResult.failures", "testResult.passes", "testResult.skips", "testResult.total" as Failed, Passed, Skipped, Total
```

**Jenkins/Job Information/Top 10 Failed Stages with Common Errors**
```
_sourceCategory={{Logsdatasource}}  Pipeline_Stages {{Name}}
| _sourceHost as Master
| json "name" as Name
| where name matches "{{Name}}"
| json "stages" as StagesPipeline
| parse regex field = StagesPipeline "(?<json_added_blob>\{[^\}]+(?:\}\}|\}))" multi
| json field=json_added_blob "id", "name", "startTime", "duration", "status", "steps", "error" as %"Stage ID", %"Stage Name", %"Start Time", %"Stage Duration", %"Stage Status", %"Stage Steps", %"Stage Error" nodrop
```

**Jenkins/Job Information/Top 5 Failed Tests**
```
_sourceCategory={{Logsdatasource}}  Test_Result {{Name}}
| _sourceHost as Master
| json "name" as Name
| where Name matches "{{Name}}"
| json "testResult" as statusValues
| parse regex field=statusValues "(?<TestResult>\{[^\}]+\})" multi
| json auto field=TestResult
```

**Jenkins/Job Information/Top 5 Slowest Stages by Average Run Duration**
```
_sourceCategory={{Logsdatasource}}  Pipeline_Stages {{Name}}
| _sourceHost as Master
| json "name" as Name
| where Name matches "{{Name}}"
| json "stages" as StagesPipeline
| parse regex field = StagesPipeline "(?<json_added_blob>\{[^\}]+(?:\}\}|\}))" multi
| json field=json_added_blob "id", "name", "startTime", "duration", "status", "steps" as %"Stage ID", %"Stage Name", %"Start Time", %"Stage Duration", %"Stage Status", %"Stage Steps" nodrop
```

**Jenkins/Job Information/Top 5 Slowest Test by Average Run Duration**
```
_sourceCategory={{Logsdatasource}}  Test_Result {{Name}}
| _sourceHost as Master
| json "name" as Name
| where Name matches "{{Name}}"
| json "testResult" as statusValues
| parse regex field=statusValues "(?<TestResult>\{[^\}]+\})" multi
| json auto field=TestResult
```

**Jenkins/Job Information/Total Builds**
```
_sourceCategory={{Logsdatasource}}  Job_Status {{Name}}
| _sourceHost as Master
| json "name", "result" as Name, Result
```

**Jenkins/Job Overview/ 1 day compare)**
```
_sourceCategory={{Logsdatasource}}  "\"logType\":\"Job_Status\""
| _sourceHost as Master
| json "name", "label","result", "jobRunDuration" as Name,Label, Result, Duration
```

**Jenkins/Job Overview/Failed Builds**
```
_sourceCategory={{Logsdatasource}}  "\"logType\":\"Job_Status\""
| _sourceHost as Master
| json "name", "label", "result" as Name, Label, Result
```

**Jenkins/Job Overview/Job Result Trend**
```
_sourceCategory={{Logsdatasource}}  "\"logType\":\"Job_Status\""
| _sourceHost as Master
| json "name", "number","label", "result" as Name, Number, Label, Result nodrop
```

**Jenkins/Job Overview/Job Run Duration**
```
_sourceCategory={{Logsdatasource}}  "\"logType\":\"Job_Status\""
| _sourceHost as Master
| json "jobRunDuration", "number", "result", "name", "label" as Duration, Number, Result, Name, Label nodrop
```

**Jenkins/Job Overview/Jobs Average Run Duration**
```
_sourceCategory={{Logsdatasource}}  "\"logType\":\"Job_Status\""
| _sourceHost as Master
| json "name","number","label","jobRunDuration", "result" as Name, Number, Label, Duration, Result
```

**Jenkins/Job Overview/Jobs by Node Name**
```
_sourceCategory={{Logsdatasource}}  "\"logType\":\"Job_Status\""
| _sourceHost as Master
| json "nodeName", "name", "number", "label", "result" as %"Node Name", Name, Number, Label, Result
```

**Jenkins/Job Overview/Jobs in Progress**
```
_sourceCategory={{Logsdatasource}}  In_Progress
| _sourceHost as Master
| json "name", "result", "number" as Name, Result, Number
| where Result = "In_Progress" and Name matches "{{Name}}" and Master matches "{{Master}}"
| first(_raw) by Name, Number, Master
| json field=_first "jobBuildURL", "label", "nodeName", "jobStartTime", "jobRunDuration" as URL, Label, %"Node Name", %"Start Time", %"Duration(sec)" nodrop
| where Label matches "{{Label}}"
| where ![subquery : _sourceCategory={{Logsdatasource}}  "\"logType\":\"Job_Status\""
| _sourceHost as Master
| json "name", "number" as Name, Number
```

**Jenkins/Job Overview/Jobs in Queue**
```
_sourceCategory={{Logsdatasource}}  Queue_Event
| _sourceHost as Master
| json "jobName" as Name
| first(_raw) by Name, Master
| json field = _first "queueId", "queueTime", "isBlocked", "reasonForBlock", "isConcurrentBuild", "jobName", "jobURL" as %"Queue Id", %"Queue Time(sec)", Blocked, Reason, %"Concurrent Build", Name, URL nodrop
| where Name matches "{{Name}}" and Master matches "{{Master}}"
| tourl(URL, Name) as Name
| replace (URL, /\/[0-9]{1,}/, "") as URL
| where ![subquery : _sourceCategory={{Logsdatasource}}  "\"logType\":\"Job_Status\""
| _sourceHost as Master
| json "jobBuildURL" as URL
```

**Jenkins/Job Overview/Jobs Status Percentage**
```
_sourceCategory={{Logsdatasource}}  "\"logType\":\"Job_Status\""
| _sourceHost as Master
| json "name","label","result" as Name, Label, Result
```

**Jenkins/Job Overview/Max Run Duration**
```
_sourceCategory={{Logsdatasource}}  "\"logType\":\"Job_Status\""
| _sourceHost as Master
| json "name", "label", "result", "jobRunDuration" as Name, Label, Result, Duration
```

**Jenkins/Job Overview/Recent Builds**
```
_sourceCategory={{Logsdatasource}}  "\"logType\":\"Job_Status\""
| _sourceHost as Master
| json "jobRunDuration", "number", "result", "name", "jobBuildURL", "label" as Duration, Number, Result, Name, URL, Label nodrop
| where Name matches "{{Name}}" and Label matches "{{Label}}" and Result matches "{{Result}}" and Master matches "{{Master}}"
| _sourceHost as Master
| tourl(URL, Name) as Name
| if(Result matches "SUCCESS", ":white-heavy-check-mark:", ":prohibited:") as icon
| lookup utf as Result from https://s3.amazonaws.com/sumologic-app-data/emoji.csv on shortname=icon
```

**Jenkins/Job Overview/Success Rate**
```
_sourceCategory={{Logsdatasource}}  Job_Status
| _sourceHost as Master
| json "name", "result" as Name, Result
```

**Jenkins/Job Overview/Top 10 Slowest Failed Jobs**
```
_sourceCategory={{Logsdatasource}}  "\"logType\":\"Job_Status\""
| _sourceHost as Master
| json "name", "result", "label", "jobRunDuration" as Name, Result, Label, Duration
```

**Jenkins/Job Overview/Top 10 Slowest Successful Jobs(Minutes)**
```
_sourceCategory={{Logsdatasource}}  "\"logType\":\"Job_Status\""
| _sourceHost as Master
| json "name", "result", "jobRunDuration", "label" as Name, Result, Duration, Label
```

**Jenkins/Job Overview/Total Builds**
```
_sourceCategory={{Logsdatasource}}  "\"logType\":\"Job_Status\""
| _sourceHost as Master
| json "name", "label", "result" as Name, Label, Result
```

**Jenkins/Master Health/Jenkins System Logs**
```
_sourceCategory={{Logsdatasource}}  Jenkins_Log
| json "threadId", "logType", "logLevel", "logMessage", "logSource", "eventTime", "logStackTrace" as %"Thread ID", %"Log Type", %"Log Level", %"Log Message", %"Log Source", %"Event Time", %"Log Stack Trace" nodrop
```

**Jenkins/Node Health/Available Disk Space (GB)**
```
_sourceCategory={{Logsdatasource}}  Periodic_Update "nodeStatus":"updated"
| _sourceHost as Master
| json "nodeName", "numberOfExecutors", "isOnline", "nodeLabel" as NodeName, ExecutorsCount, Onilne, NodeLabel nodrop
| where NodeName matches "{{NodeName}}" and NodeLabel matches "{{NodeLabel}}" and Master matches "{{Master}}"
| where ExecutorsCount > 0 AND Onilne matches "true"
| where ![subquery:_sourceCategory={{Logsdatasource}}  Periodic_Update "nodeStatus":"removed"
| json "eventTime", "nodeName", "numberOfExecutors" as Time, NodeName, ExecutorsCount nodrop
| _sourceHost as Master
| count as Count by NodeName, Master 
| compose NodeName, Master]
| concat(Master, "-", NodeName) as %"Node Name"
| json field=_raw "monitorData.DiskSpaceMonitor" as Disk_Space
| parse regex field=Disk_Space "(?<Disk_Space>.*?) (?<Unit>.*[A-Z]+)" nodrop
```

**Jenkins/Node Health/Busy Nodes**
```
_sourceCategory={{Logsdatasource}}  Periodic_Update "nodeStatus":"updated"
| _sourceHost as Master
| json "nodeName", "numberOfExecutors", "nodeLabel" as NodeName, ExecutorsCount,NodeLabel
| where NodeName matches "{{NodeName}}" and NodeLabel matches "{{NodeLabel}}" and Master matches "{{Master}}"
| first(_raw) as Message by NodeName, Master
| where ![subquery:_sourceCategory={{Logsdatasource}}  Periodic_Update "nodeStatus":"removed"
| json "eventTime", "nodeName", "numberOfExecutors" as Time, NodeName, ExecutorsCount nodrop
| _sourceHost as Master
| count as Count by NodeName, Master 
| compose NodeName, Master]
| json field=Message "nodeName", "monitorData.ArchitectureMonitor", "monitorData.ClockMonitor" ,"monitorData.ResponseTimeMonitor", "monitorData.DiskSpaceMonitor", "monitorData.TemporarySpaceMonitor", "monitorData.SwapSpaceMonitor", "isIdle", "isOnline", "nodeURL", "nodeLabel"  as %"Node Name", Architecture, Clock, Reponse_Time, Disk_Space, Temporary_Space, SwapMemory, Idle, Online, URL, %"Node Label" nodrop
```

**Jenkins/Node Health/Executors**
```
_sourceCategory={{Logsdatasource}}  Periodic_Update "nodeStatus":"updated"
| json "numberOfExecutors", "nodeName", "nodeLabel", "numberOfFreeExecutors", "eventTime" as Total_Executors, NodeName, NodeLabel, Free_Executors, Event_Time nodrop
| _sourceHost as Master
| where NodeName matches "{{NodeName}}" and NodeLabel matches "{{NodeLabel}}" and Master matches "{{Master}}"
| concat(Master, "-",NodeName) as NodeName
| Total_Executors - Free_Executors as Busy_Executors
| first(Total_Executors) as Total_Executors, first(Free_Executors) as Free_Executors, first(Busy_Executors) as Busy_Executors by NodeName
| where Busy_Executors >= 0
| where ![subquery:_sourceCategory={{Logsdatasource}}  Periodic_Update "nodeStatus":"removed"
| json "eventTime", "nodeName", "numberOfExecutors" as Time, NodeName, ExecutorsCount nodrop
```

**Jenkins/Node Health/Idle Nodes**
```
_sourceCategory={{Logsdatasource}}  Periodic_Update "nodeStatus":"updated"
| _sourceHost as Master
| json "nodeName", "numberOfExecutors", "nodeLabel" as NodeName, ExecutorsCount,NodeLabel
| where NodeName matches "{{NodeName}}" and NodeLabel matches "{{NodeLabel}}" and Master matches "{{Master}}"
| first(_raw) as Message by NodeName, Master
| where ![subquery:_sourceCategory={{Logsdatasource}}  Periodic_Update "nodeStatus":"removed"
| json "eventTime", "nodeName", "numberOfExecutors" as Time, NodeName, ExecutorsCount nodrop
| _sourceHost as Master
| count as Count by NodeName, Master 
| compose NodeName, Master]
| json field=Message "nodeName", "monitorData.ArchitectureMonitor", "monitorData.ClockMonitor" ,"monitorData.ResponseTimeMonitor", "monitorData.DiskSpaceMonitor", "monitorData.TemporarySpaceMonitor", "monitorData.SwapSpaceMonitor", "isIdle", "isOnline", "nodeURL", "nodeLabel"  as %"Node Name", Architecture, Clock, Reponse_Time, Disk_Space, Temporary_Space, SwapMemory, Idle, Online, URL, %"Node Label" nodrop
```

**Jenkins/Node Health/Jenkins Nodes**
```
_sourceCategory={{Logsdatasource}}  Periodic_Update "nodeStatus":"updated"
| json "nodeName", "numberOfExecutors", "nodeLabel" as NodeName, ExecutorsCount,NodeLabel
| _sourceHost as Master
| where NodeName matches "{{NodeName}}" and NodeLabel matches "{{NodeLabel}}" and Master matches "{{Master}}"
| first(_raw) as Message by NodeName, Master
| where ![subquery:_sourceCategory={{Logsdatasource}}  Periodic_Update "nodeStatus":"removed"
| json "eventTime", "nodeName", "numberOfExecutors" as Time, NodeName, ExecutorsCount nodrop
| _sourceHost as Master
| count as Count by NodeName, Master 
| compose NodeName, Master]
| json field=Message "nodeName", "monitorData.ArchitectureMonitor", "monitorData.ClockMonitor" ,"monitorData.ResponseTimeMonitor", "monitorData.DiskSpaceMonitor", "monitorData.TemporarySpaceMonitor", "monitorData.SwapSpaceMonitor", "isIdle", "isOnline", "nodeURL", "nodeLabel"  as %"Node Name", Architecture, Clock, %"Reponse Time", %"Free Disk Space", Temporary_Space, SwapMemory, Idle, Online, URL, %"Node Label" nodrop
| if(Idle matches "true", "false", "true") as Busy
| parse field=SwapMemory "Memory:*  Swap:*" as Physical_Memory, Swap_Memory
| parse regex field=Physical_Memory "(?<Free_Physical_Memory>.*?)/(?<Total_Physical_Memory>.*?)(?<Unit_Phy>[A-Z]+)"
| num(Free_Physical_Memory) | num(Total_Physical_Memory)
| (Free_Physical_Memory/Total_Physical_Memory)*100 as Free_Physical_Memory
| parse regex field=Swap_Memory "(?<Free_Swap_Memory>.*?)/(?<Total_Swap_Memory>.*?)(?<Unit_Swap>[A-Z]+)"
```

**Jenkins/Node Health/Launch Failures**
```
_sourceCategory={{Logsdatasource}}  ("Launch_Failure")
| json "nodeName", "nodeLabel" as NodeName, NodeLabel nodrop
```

**Jenkins/Node Health/Node Events**
```
_sourceCategory={{Logsdatasource}}  ("Computer_Online" OR "Computer_Offline" OR "Computer_Temp_Online" OR "Computer_Temp_Offline" OR "Launch_Failure")
| json "nodeName", "eventSource", "eventTime", "nodeLabel", "numberOfExecutors", "nodeURL" as NodeName, Event, Time, NodeLabel, Executors, Node_URL nodrop
```

**Jenkins/Node Health/Nodes by Online Status**
```
_sourceCategory={{Logsdatasource}}  Periodic_Update "nodeStatus":"updated"
| json "nodeName", "numberOfExecutors", "nodeLabel" as NodeName, ExecutorsCount,NodeLabel
| _sourceHost as Master
| first(_raw) as Message by NodeName, Master
| where ![subquery:_sourceCategory={{Logsdatasource}}  Periodic_Update "nodeStatus":"removed"
| json "eventTime", "nodeName", "numberOfExecutors" as Time, NodeName, ExecutorsCount nodrop
| _sourceHost as Master
| count as Count by NodeName, Master  
| compose NodeName, Master] 
| json field=Message "nodeName","isOnline" as %"Node Name",Online
```

**Jenkins/Node Health/Offline Nodes**
```
_sourceCategory={{Logsdatasource}}  Periodic_Update "nodeStatus":"updated"
| _sourceHost as Master
| json "nodeName", "numberOfExecutors", "nodeLabel" as NodeName, ExecutorsCount,NodeLabel
| where NodeName matches "{{NodeName}}" and NodeLabel matches "{{NodeLabel}}" and Master matches "{{Master}}"
| first(_raw) as Message by NodeName, Master
| where ![subquery:_sourceCategory={{Logsdatasource}}  Periodic_Update "nodeStatus":"removed"
| json "eventTime", "nodeName", "numberOfExecutors" as Time, NodeName, ExecutorsCount nodrop
| _sourceHost as Master
| count as Count by NodeName, Master 
| compose NodeName, Master]
| json field=Message "nodeName", "monitorData.ArchitectureMonitor", "monitorData.ClockMonitor" ,"monitorData.ResponseTimeMonitor", "monitorData.DiskSpaceMonitor", "monitorData.TemporarySpaceMonitor", "monitorData.SwapSpaceMonitor", "isIdle", "isOnline", "nodeURL", "nodeLabel"  as Node_Name, Architecture, Clock, Reponse_Time, Disk_Space, Temporary_Space, SwapMemory, Idle, Online, URL, Label nodrop
```

**Jenkins/Node Health/Online Nodes**
```
_sourceCategory={{Logsdatasource}}  Periodic_Update "nodeStatus":"updated"
| _sourceHost as Master
| json "nodeName", "numberOfExecutors", "nodeLabel" as NodeName, ExecutorsCount,NodeLabel
| where NodeName matches "{{NodeName}}" and NodeLabel matches "{{NodeLabel}}" and Master matches "{{Master}}"
| first(_raw) as Message by NodeName, Master
| where ![subquery:_sourceCategory={{Logsdatasource}}  Periodic_Update "nodeStatus":"removed"
| json "eventTime", "nodeName", "numberOfExecutors" as Time, NodeName, ExecutorsCount nodrop
| _sourceHost as Master
| count as Count by NodeName, Master 
| compose NodeName, Master]
| json field=Message "nodeName", "monitorData.ArchitectureMonitor", "monitorData.ClockMonitor" ,"monitorData.ResponseTimeMonitor", "monitorData.DiskSpaceMonitor", "monitorData.TemporarySpaceMonitor", "monitorData.SwapSpaceMonitor", "isIdle", "isOnline", "nodeURL", "nodeLabel"  as Node_Name, Architecture, Clock, Reponse_Time, Disk_Space, Temporary_Space, SwapMemory, Idle, Online, URL, Label nodrop
```

**Jenkins/Node Health/Physical Memory**
```
_sourceCategory={{Logsdatasource}}  Periodic_Update "nodeStatus":"updated"
| _sourceHost as Master
| json "nodeName", "numberOfExecutors", "isOnline", "nodeLabel" as NodeName, ExecutorsCount, Onilne, NodeLabel nodrop
| where NodeName matches "{{NodeName}}" and NodeLabel matches "{{NodeLabel}}" and Master matches "{{Master}}"
| where ExecutorsCount > 0 AND Onilne matches "true"
| first(_raw) as Message by NodeName, Master
| where ![subquery:_sourceCategory={{Logsdatasource}}  Periodic_Update "nodeStatus":"removed"
| json "eventTime", "nodeName", "numberOfExecutors" as Time, NodeName, ExecutorsCount nodrop
| _sourceHost as Master
| count as Count by NodeName, Master 
| compose NodeName, Master]
| concat(Master, "-", NodeName) as NodeName
| json field=Message "monitorData.SwapSpaceMonitor", "nodeLabel"  as SwapMemory, Node_Label nodrop
| parse field=SwapMemory "Memory:*  Swap:*" as Physical_Memory, Swap_Memory
| parse regex field=Physical_Memory "(?<Free_Memory>.*?)/(?<Total_Memory>.*?)[A-Z]"
```

**Jenkins/Node Health/Recent Builds**
```
_sourceCategory={{Logsdatasource}}  Job_Status
| json "nodeName", "name", "result", "jobBuildURL", "number" as NodeName, JobName, Result, jobBuildURL, Number nodrop
```

**Jenkins/Node Health/Recently Removed Nodes**
```
_sourceCategory={{Logsdatasource}}  Periodic_Update "nodeStatus":"removed"
| json "eventTime", "nodeName", "numberOfExecutors" as Time, NodeName, ExecutorsCount nodrop
```

**Jenkins/Overview/Available Disk Memory**
```
_sourceCategory={{Logsdatasource}}  Periodic_Update "nodeStatus":"updated"
| _sourceHost as Master
| json "nodeName", "numberOfExecutors", "isOnline", "nodeLabel" as NodeName, ExecutorsCount, Onilne, NodeLabel nodrop
| where ExecutorsCount > 0 AND Onilne matches "true"
| where [subquery from=(-2d): _sourceCategory={{Logsdatasource}}  (*running on* OR *building on*)
| where _sourceName matches "{{JobName}}#{{BuildNumber}}"
| parse regex "Running on (?<NodeName>.*) in" nodrop
| parse regex "Building on (?<NodeName>.*) in" nodrop
| if (NodeName matches "Jenkins", "master", NodeName) as NodeName
| compose NodeName]
| where NodeName matches "{{NodeName}}" and NodeLabel matches "{{NodeLabel}}"
| json field=_raw "monitorData.DiskSpaceMonitor" as Disk_Space nodrop
| parse regex field=Disk_Space "(?<Disk_Space>.*?) (?<Unit>.*[A-Z]+)" nodrop
```

**Jenkins/Overview/Console Log Errors Count**
```
_sourceCategory={{Logsdatasource}}  {{LogLevel}}
| where _sourceName matches "{{JobName}}#{{BuildNumber}}"
| parse field=_raw "[*] *" as Time, %"Log Message"
```

**Jenkins/Overview/Executors**
```
_sourceCategory={{Logsdatasource}}  Periodic_Update "nodeStatus":"updated"
| json "numberOfExecutors", "nodeName", "nodeLabel", "numberOfFreeExecutors", "eventTime" as Total_Executors, NodeName, NodeLabel, Free_Executors, Event_Time nodrop
| where [subquery from=(-2d): _sourceCategory={{Logsdatasource}}  (*running on* OR *building on*)
| where _sourceName matches "{{JobName}}#{{BuildNumber}}"
| parse regex "Running on (?<NodeName>.*) in" nodrop
| parse regex "Building on (?<NodeName>.*) in" nodrop
```

**Jenkins/Overview/Job Builds**
```
_sourceCategory={{Logsdatasource}}  Job_Status
| json "name", "result", "number" as JobName, Result, BuildNumber
```

**Jenkins/Overview/Job Duration (Minutes)**
```
_sourceCategory={{Logsdatasource}}  Job_Status
| json "name", "result", "jobRunDuration", "number" as JobName, Result, Duration, BuildNumber
```

**Jenkins/Overview/Jobs in Queue**
```
_sourceCategory={{Logsdatasource}}  Queue_Event
| _sourceHost as Master
| json "jobName" as Name
| first(_raw) by Name, Master
| json field = _first "queueId", "queueTime", "isBlocked", "reasonForBlock", "isConcurrentBuild", "jobName", "jobURL" as %"Queue Id", %"Queue Time(sec)", Blocked, Reason, %"Concurrent Build", Name, URL nodrop
| tourl(URL, Name) as Name
| replace (URL, /\/[0-9]{1,}/, "") as URL
| where ![subquery : _sourceCategory={{Logsdatasource}}  "\"logType\":\"Job_Status\""
| _sourceHost as Master
| json "jobBuildURL" as URL
```

**Jenkins/Overview/Machines**
```
_sourceCategory={{Logsdatasource}}  Periodic_Update "nodeStatus":"updated"
| json "numberOfExecutors", "nodeName", "nodeLabel", "numberOfFreeExecutors", "eventTime" as Total_Executors, NodeName, NodeLabel, Free_Executors, Event_Time nodrop
| where NodeName matches "{{NodeName}}" and NodeLabel matches "{{NodeLabel}}"
| where Total_Executors > 0
| where [subquery from=(-2d): _sourceCategory={{Logsdatasource}}  (*running on* OR *building on*)
| where _sourceName matches "{{JobName}}#{{BuildNumber}}"
| parse regex "Running on (?<NodeName>.*) in" nodrop
| parse regex "Building on (?<NodeName>.*) in" nodrop
```

**Jenkins/Overview/Physical Memory Free Percentage**
```
_sourceCategory={{Logsdatasource}}  Periodic_Update "nodeStatus":"updated"
| _sourceHost as Master
| json "nodeName", "numberOfExecutors", "isOnline", "nodeLabel" as NodeName, ExecutorsCount, Onilne, NodeLabel nodrop
| where ExecutorsCount > 0 AND Onilne matches "true"
| where [subquery from=(-2d): _sourceCategory={{Logsdatasource}}  (*running on* OR *building on*)
| where _sourceName matches "{{JobName}}#{{BuildNumber}}"
| parse regex "Running on (?<NodeName>.*) in" nodrop
| parse regex "Building on (?<NodeName>.*) in" nodrop
| if (NodeName matches "Jenkins", "master", NodeName) as NodeName
| compose NodeName]
| where NodeName matches "{{NodeName}}" and NodeLabel matches "{{NodeLabel}}"
| json "monitorData.SwapSpaceMonitor", "nodeLabel"  as SwapMemory, Node_Label nodrop
| parse field=SwapMemory "Memory:*  Swap:*" as Physical_Memory, Swap_Memory
| parse regex field=Physical_Memory "(?<Free_Memory>.*?)/(?<Total_Memory>.*?)[A-Z]"
```

**Jenkins/Overview/Queue Duration (Minutes)**
```
_sourceCategory={{Logsdatasource}}  Queue_Event
| json "queueId", "queueTime", "isBlocked", "reasonForBlock", "isConcurrentBuild", "jobName", "jobURL" as %"Queue Id", %"Queue Time(sec)", Blocked, Reason, %"Concurrent Build", Name, URL nodrop
```

**Jenkins/Overview/System Log Errors Count**
```
_sourceCategory={{Logsdatasource}}  Jenkins_Log
| json "threadId", "logType", "logLevel", "logMessage", "logSource", "eventTime", "logStackTrace" as %"Thread ID", %"Log Type", %"Log Level", %"Log Message", %"Log Source", %"Event Time", %"Log Stack Trace" nodrop
```

**Jenkins/Overview/Unused Machines**
```
_sourceCategory={{Logsdatasource}}  Periodic_Update "nodeStatus":"updated"
| json "numberOfExecutors", "nodeName", "nodeLabel", "numberOfFreeExecutors", "eventTime" as Total_Executors, NodeName, NodeLabel, Free_Executors, Event_Time nodrop
| where NodeName matches "{{NodeName}}" and NodeLabel matches "{{NodeLabel}}"
| where Total_Executors > 0
| where ![subquery from=(-2d): _sourceCategory={{Logsdatasource}}  (*running on* OR *building on*)
| where _sourceName matches "{{JobName}}#{{BuildNumber}}"
| parse regex "Running on (?<NodeName>.*) in" nodrop
| parse regex "Building on (?<NodeName>.*) in" nodrop
```

**Jenkins/Parse Stages for Job/Parse Stages for Job**
```
_sourceCategory={{Logsdatasource}}  Pipeline_Stages {{Job_Name}}
| json "name"
| where name = {{Job_Name}}
| json "stages" as StagesPipeline
| parse regex field = StagesPipeline "(?<json_added_blob>\{[^\}]+(?:\}\}|\}))" multi
| json field=json_added_blob "startTime", "stageId", "name", "duration", "status", "pauseDuration", "id", "steps", "error" as Start_Time, Stage_Id, Stage_Name, Stage_Duration, Stage_Status, Stage_Pause_Duration, ID, Steps, Error nodrop
```

**Jenkins/Pipeline Stage Monitoring/20 Slowest Pipeline Steps (Seconds)**
```
_sourceCategory={{Logsdatasource}}  Pipeline_Stages
| json "name", "number" as pipeline_name, pipeline_number
| json "stages" as StagesPipeline
| parse regex field = StagesPipeline "(?<json_added_blob>\{[^\}]+(?:\}\}|\}))" multi
| json field=json_added_blob "id", "stageId", "name", "duration", "status", "startTime" as ID, stage_id, stage_name, stage_duration, stage_status, execution_time nodrop
| where pipeline_name matches "{{pipeline_name}}" and  stage_status matches "{{stage_status}}" and  stage_name matches "{{stage_name}}"
| json field=json_added_blob "steps" as step
| parse regex field=step "StepName - (?<step_name>.+?),StepStatus - (?<step_status>.+?),StepDuration - (?<step_duration>.+?),StepArguments - (?<step_arg>.+?),StepExecutedOn - (?<step_exec>.+?)\"" multi
```

**Jenkins/Pipeline Stage Monitoring/Average Pipeline  Duration (Seconds)**
```
_sourceCategory={{Logsdatasource}}  Pipeline_Stages
| json "name", "number" as pipeline_name, pipeline_number
| json "stages" as StagesPipeline 
| parse regex field = StagesPipeline "(?<json_added_blob>\{[^\}]+(?:\}\}|\}))" multi
| json field=json_added_blob "id", "stageId", "name", "duration", "status", "startTime" as ID, stage_id, stage_name, stage_duration, stage_status, execution_time nodrop
```

**Jenkins/Pipeline Stage Monitoring/Average Stage Duration (Seconds)**
```
_sourceCategory={{Logsdatasource}}  Pipeline_Stages
| json "name", "number" as pipeline_name, pipeline_number
| json "stages" as StagesPipeline
| parse regex field = StagesPipeline "(?<json_added_blob>\{[^\}]+(?:\}\}|\}))" multi
| json field=json_added_blob "id", "stageId", "name", "duration", "status", "startTime" as ID, stage_id, stage_name, stage_duration, stage_status, execution_time nodrop
```

**Jenkins/Pipeline Stage Monitoring/Failed Stages**
```
_sourceCategory={{Logsdatasource}}  Pipeline_Stages
| json "name", "number" as pipeline_name, pipeline_number
| json "stages" as StagesPipeline
| parse regex field = StagesPipeline "(?<json_added_blob>\{[^\}]+(?:\}\}|\}))" multi
| json field=json_added_blob "id", "stageId", "name", "duration", "status", "startTime" as ID, stage_id, stage_name, stage_duration, stage_status, execution_time nodrop
```

**Jenkins/Pipeline Stage Monitoring/Last 10 Failed Stages**
```
_sourceCategory={{Logsdatasource}}  Pipeline_Stages
| json "name", "number" as pipeline_name, pipeline_number
| json "stages" as StagesPipeline
| parse regex field = StagesPipeline "(?<json_added_blob>\{[^\}]+(?:\}\}|\}))" multi
| json field=json_added_blob "id", "stageId", "name", "duration", "status", "startTime" as ID, stage_id, stage_name, stage_duration, stage_status, execution_time nodrop
```

**Jenkins/Pipeline Stage Monitoring/Pipeline Execution Count**
```
_sourceCategory={{Logsdatasource}}  Pipeline_Stages
| json "name", "number" as pipeline_name, pipeline_number
| json "stages" as StagesPipeline
| parse regex field = StagesPipeline "(?<json_added_blob>\{[^\}]+(?:\}\}|\}))" multi
| json field=json_added_blob "id", "stageId", "name", "duration", "status", "startTime" as ID, stage_id, stage_name, stage_duration, stage_status, execution_time nodrop
```

**Jenkins/Pipeline Stage Monitoring/Pipeline Summary**
```
_sourceCategory={{Logsdatasource}}  Pipeline_Stages
| json "name", "number" as pipeline_name, pipeline_number
| json "stages" as StagesPipeline
| parse regex field = StagesPipeline "(?<json_added_blob>\{[^\}]+(?:\}\}|\}))" multi
| json field=json_added_blob "id", "stageId", "name", "duration", "status", "startTime" as ID, stage_id, stage_name, stage_duration, stage_status, execution_time nodrop
```

**Jenkins/Pipeline Stage Monitoring/Stage Execution Count**
```
_sourceCategory={{Logsdatasource}}  Pipeline_Stages
| json "name", "number" as pipeline_name, pipeline_number
| json "stages" as StagesPipeline
| parse regex field = StagesPipeline "(?<json_added_blob>\{[^\}]+(?:\}\}|\}))" multi
| json field=json_added_blob "id", "stageId", "name", "duration", "status", "startTime" as ID, stage_id, stage_name, stage_duration, stage_status, execution_time nodrop
```

**Jenkins/Pipeline Stage Monitoring/Top 20 Slowest Pipeline Stages (Seconds) by Pipeline Runs**
```
_sourceCategory={{Logsdatasource}}  Pipeline_Stages
| json "name", "number" as pipeline_name, pipeline_number
| json "stages" as StagesPipeline
| parse regex field = StagesPipeline "(?<json_added_blob>\{[^\}]+(?:\}\}|\}))" multi
| json field=json_added_blob "id", "stageId", "name", "duration", "status", "startTime" as ID, stage_id, stage_name, stage_duration, stage_status, execution_time nodrop
```

**Jenkins/Test Cases Comparison by Builds/Test Cases Comparison by Builds**
```
_sourceCategory={{Logsdatasource}}  Job_Status {{Job_Name}}
| json "name", "number"
| where name = {{Job_Name}}
| json "testResult.failures", "testResult.passes", "testResult.skips" as Failed, Passed, Skipped
```

**Jenkins/Test Cases Parsing/Test Cases Parsing**
```
_sourceCategory={{Logsdatasource}}  Test_Result {{Job_Name}}
| json "name"
| where name = {{Job_Name}}
| json "testResult" as statusValues
| parse regex field=statusValues "(?<TestResult>\{[^\}]+\})" multi
| json auto field=TestResult
```


