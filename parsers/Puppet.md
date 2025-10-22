# Parsers For Puppet

**Puppet/Error Analysis/Most Recent Errors**
```
_sourceCategory={{ ServerLogsDataSource}}  and " ERROR "
| parse regex "\sERROR\s.*\]\s\[.*?\]\s(?<err_msg>.*)$"
```

**Puppet/Error Analysis/Most Recent Warnings**
```
_sourceCategory={{ ServerLogsDataSource}}  and " WARN "
| parse regex "\sWARN\s.*\]\s\[.*?\]\s(?<warning>.*)$"
```

**Puppet/Error Analysis/Top 10 Errors**
```
_sourceCategory={{ ServerLogsDataSource}}  and " ERROR "
| parse regex "\sERROR\s.*\]\s\[.*?\]\s(?<err_msg>.*)$"
```

**Puppet/Error Analysis/Top Erroneous Nodes**
```
_sourceCategory={{ ServerLogsDataSource}}  and " ERROR " and " on node "
| parse regex "\son node\s(?<node_name>.*)$"
```

**Puppet/Node Puppet Runs Analysis/Average Catalog Application Time**
```
_sourceCategory={{ReportLogsDataSource}}  
| parse"\"environment\":\"*\"" as runenvironment
| where runenvironment matches "{{Environment}}"
| parse regex "(?:Applied|Finished)\s(?:catalog|catalog\srun)\sin\s(?<processing_time>.*?)\s.*" 
```

**Puppet/Node Puppet Runs Analysis/Failed Resources**
```
_sourceCategory={{ReportLogsDataSource}} 
| parse"\"environment\":\"*\"" as runenvironment
| where runenvironment matches "{{Environment}}"
| parse "\"resources\":{\"name\":\"resources\",\"label\":\"Resources\",\"values\":[[\"total\",\"Total\",*],[\"skipped\",\"Skipped\",*],[\"failed\",\"Failed\",*],[\"failed_to_restart\",\"Failed to restart\",*],[\"restarted\",\"Restarted\",*],[\"changed\",\"Changed\",*],[\"out_of_sync\",\"Out of sync\",*],[\"scheduled\",\"Scheduled\",*],[\"corrective_change\",\"Corrective change\",*]]" as total_res,skipped,failed,failed_to_restart,restarted,changed,out_of_sync,scheduled,corrective_change
| parse "resource_list\":\"*\"}" as resourcelist
```

**Puppet/Node Puppet Runs Analysis/Node Puppet Run Activity**
```
_sourceCategory={{ReportLogsDataSource}} 
| parse"\"environment\":\"*\"" as runenvironment
| where runenvironment matches "{{Environment}}"
| parse "\"puppet_version\":\"*\",\"status\":\"*\"" as puppet_version,status
```

**Puppet/Node Puppet Runs Analysis/Out of Sync Resources**
```
_sourceCategory={{ReportLogsDataSource}} 
| parse"\"environment\":\"*\"" as runenvironment
| where runenvironment matches "{{Environment}}"
| parse "\"resources\":{\"name\":\"resources\",\"label\":\"Resources\",\"values\":[[\"total\",\"Total\",*],[\"skipped\",\"Skipped\",*],[\"failed\",\"Failed\",*],[\"failed_to_restart\",\"Failed to restart\",*],[\"restarted\",\"Restarted\",*],[\"changed\",\"Changed\",*],[\"out_of_sync\",\"Out of sync\",*],[\"scheduled\",\"Scheduled\",*],[\"corrective_change\",\"Corrective change\",*]]" as total_res,skipped,failed,failed_to_restart,restarted,changed,out_of_sync,scheduled,corrective_change
| parse "resource_list\":\"*\"}" as resourcelist
```

**Puppet/Node Puppet Runs Analysis/Resource Status**
```
_sourceCategory={{ReportLogsDataSource}} 
AND "\"resource_type\":"
| parse "\"environment\":\"*\"" as environment
| where  environment matches "{{Environment}}"
| parse "\"title\":\"*\"*\"resource_type\":\"*\"*\"failed\":*," as resource_name,text1,resource_type,text2,failure_status
```

**Puppet/Node Puppet Runs Analysis/Resources Changed**
```
_sourceCategory={{ReportLogsDataSource}} 
| parse"\"environment\":\"*\"" as runenvironment
| where runenvironment matches "{{Environment}}"
| parse "\"resources\":{\"name\":\"resources\",\"label\":\"Resources\",\"values\":[[\"total\",\"Total\",*],[\"skipped\",\"Skipped\",*],[\"failed\",\"Failed\",*],[\"failed_to_restart\",\"Failed to restart\",*],[\"restarted\",\"Restarted\",*],[\"changed\",\"Changed\",*],[\"out_of_sync\",\"Out of sync\",*],[\"scheduled\",\"Scheduled\",*],[\"corrective_change\",\"Corrective change\",*]]" as total_res,skipped,failed,failed_to_restart,restarted,changed,out_of_sync,scheduled,corrective_change
| parse "resource_list\":\"*\"}" as resourcelist
```

**Puppet/Node Puppet Runs Analysis/Resources Transition**
```
_sourceCategory={{ReportLogsDataSource}} 
| parse"\"environment\":\"*\"" as runenvironment
| where runenvironment matches "{{Environment}}"
| parse "\"resources\":{\"name\":\"resources\",\"label\":\"Resources\",\"values\":[[\"total\",\"Total\",*],[\"skipped\",\"Skipped\",*],[\"failed\",\"Failed\",*],[\"failed_to_restart\",\"Failed to restart\",*],[\"restarted\",\"Restarted\",*],[\"changed\",\"Changed\",*],[\"out_of_sync\",\"Out of sync\",*],[\"scheduled\",\"Scheduled\",*],[\"corrective_change\",\"Corrective change\",*]]" as total_res,skipped,failed,failed_to_restart,restarted,changed,out_of_sync,scheduled,corrective_change
| parse "resource_list\":\"*\"}" as resourcelist
```

**Puppet/Node Puppet Runs Analysis/Skipped Resources**
```
_sourceCategory={{ReportLogsDataSource}} 
| parse"\"environment\":\"*\"" as runenvironment
| where runenvironment matches "{{Environment}}"
| parse "\"resources\":{\"name\":\"resources\",\"label\":\"Resources\",\"values\":[[\"total\",\"Total\",*],[\"skipped\",\"Skipped\",*],[\"failed\",\"Failed\",*],[\"failed_to_restart\",\"Failed to restart\",*],[\"restarted\",\"Restarted\",*],[\"changed\",\"Changed\",*],[\"out_of_sync\",\"Out of sync\",*],[\"scheduled\",\"Scheduled\",*],[\"corrective_change\",\"Corrective change\",*]]" as total_res,skipped,failed,failed_to_restart,restarted,changed,out_of_sync,scheduled,corrective_change
| parse "resource_list\":\"*\"}" as resourcelist
```

**Puppet/Node Puppet Runs Analysis/Slowest Nodes by Catalog Application Time**
```
_sourceCategory={{ReportLogsDataSource}} 
| parse"\"environment\":\"*\"" as runenvironment
| where runenvironment matches "{{Environment}}"
| parse "\"host\":\"*\"" as node
| parse regex "(?:Applied|Finished)\s(?:catalog|catalog\srun)\sin\s(?<processing_time>.*?)\s.*" 
```

**Puppet/Node Puppet Runs Analysis/Top 5 Nodes by Puppet Runs**
```
_sourceCategory={{ReportLogsDataSource}} 
| parse"\"environment\":\"*\"" as runenvironment
| where runenvironment matches "{{Environment}}"
| parse "\"host\":\"*\"" as node
```

**Puppet/Overview/Active Nodes**
```
_sourceCategory={{AccessLogsDataSource}} 
| parse regex "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
```

**Puppet/Overview/Activity by Environments**
```
_sourceCategory={{AccessLogsDataSource}} 
| parse regex "(?<dummy>environment=)(?<environment>\S+?)&"
```

**Puppet/Overview/Average Service Time**
```
_sourceCategory={{ ServerLogsDataSource}} 
AND "Puppet Compiled catalog for" 
| parse "Puppet Compiled catalog for * in environment * in * seconds" as client_name,runenvironment,seconds_taken 
```

**Puppet/Overview/Average Service Time by Nodes**
```
_sourceCategory={{ ServerLogsDataSource}}  and "Puppet Compiled catalog for" 
| parse "Puppet Compiled catalog for * in environment * in * seconds" as client_name,runenvironment,seconds_taken 
```

**Puppet/Overview/Highest Service Time by Nodes**
```
_sourceCategory={{ ServerLogsDataSource}}  and "Puppet Compiled catalog for" 
| parse "Puppet Compiled catalog for * in environment * in * seconds" as node_name,runenvironment,seconds_taken
```

**Puppet/Overview/Node Requests Summary Over Time**
```
_sourceCategory={{AccessLogsDataSource}} 
| parse regex "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP/[\d\.]+\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*"
```

**Puppet/Overview/Puppet Node Versions**
```
_sourceCategory={{AccessLogsDataSource}} 
| parse regex "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP/[\d\.]+\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<puppet_version_prefix>Puppet/)(?<puppet_version>.*?)\s.*"
```


