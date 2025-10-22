# Parsers For Puppet - OpenTelemetry

**Puppet - OpenTelemetry/Puppet - Error Analysis/Most Recent Errors**
```
sumo.datasource=puppet and " ERROR "
| parse regex "\sERROR\s.*\]\s\[.*?\]\s(?<err_msg>.*)$"
```

**Puppet - OpenTelemetry/Puppet - Error Analysis/Most Recent Warnings**
```
sumo.datasource=puppet and " WARN "
| parse regex "\sWARN\s.*\]\s\[.*?\]\s(?<warning>.*)$"
```

**Puppet - OpenTelemetry/Puppet - Error Analysis/Top 10 Errors**
```
sumo.datasource=puppet and " ERROR "
| parse regex "\sERROR\s.*\]\s\[.*?\]\s(?<err_msg>.*)$"
```

**Puppet - OpenTelemetry/Puppet - Error Analysis/Top Erroneous Nodes**
```
sumo.datasource=puppet and " ERROR " and " on node "
| parse regex "\son node\s(?<node_name>.*)$"
```

**Puppet - OpenTelemetry/Puppet - Node Puppet Runs Analysis/Average Catalog Application Time**
```
sumo.datasource=puppet 
| parse"\"environment\":\"*\"" as runenvironment
| where runenvironment matches "{{Environment}}"
| parse regex "(?:Applied|Finished)\s(?:catalog|catalog\srun)\sin\s(?<processing_time>.*?)\s.*" 
```

**Puppet - OpenTelemetry/Puppet - Node Puppet Runs Analysis/Failed Resources**
```
sumo.datasource=puppet
| parse"\"environment\":\"*\"" as runenvironment
| where runenvironment matches "{{Environment}}"
| parse "\"resources\":{\"name\":\"resources\",\"label\":\"Resources\",\"values\":[[\"total\",\"Total\",*],[\"skipped\",\"Skipped\",*],[\"failed\",\"Failed\",*],[\"failed_to_restart\",\"Failed to restart\",*],[\"restarted\",\"Restarted\",*],[\"changed\",\"Changed\",*],[\"out_of_sync\",\"Out of sync\",*],[\"scheduled\",\"Scheduled\",*],[\"corrective_change\",\"Corrective change\",*]]" as total_res,skipped,failed,failed_to_restart,restarted,changed,out_of_sync,scheduled,corrective_change
| parse "resource_list\":\"*\"}" as resourcelist
```

**Puppet - OpenTelemetry/Puppet - Node Puppet Runs Analysis/Node Puppet Run Activity**
```
sumo.datasource=puppet
| parse"\"environment\":\"*\"" as runenvironment
| where runenvironment matches "{{Environment}}"
| parse "\"puppet_version\":\"*\",\"status\":\"*\"" as puppet_version,status
```

**Puppet - OpenTelemetry/Puppet - Node Puppet Runs Analysis/Out of Sync Resources**
```
sumo.datasource=puppet
| parse"\"environment\":\"*\"" as runenvironment
| where runenvironment matches "{{Environment}}"
| parse "\"resources\":{\"name\":\"resources\",\"label\":\"Resources\",\"values\":[[\"total\",\"Total\",*],[\"skipped\",\"Skipped\",*],[\"failed\",\"Failed\",*],[\"failed_to_restart\",\"Failed to restart\",*],[\"restarted\",\"Restarted\",*],[\"changed\",\"Changed\",*],[\"out_of_sync\",\"Out of sync\",*],[\"scheduled\",\"Scheduled\",*],[\"corrective_change\",\"Corrective change\",*]]" as total_res,skipped,failed,failed_to_restart,restarted,changed,out_of_sync,scheduled,corrective_change
| parse "resource_list\":\"*\"}" as resourcelist
```

**Puppet - OpenTelemetry/Puppet - Node Puppet Runs Analysis/Resource Status**
```
sumo.datasource=puppet
AND "\"resource_type\":"
| parse "\"environment\":\"*\"" as environment
| where  environment matches "{{Environment}}"
| parse "\"title\":\"*\"*\"resource_type\":\"*\"*\"failed\":*," as resource_name,text1,resource_type,text2,failure_status
```

**Puppet - OpenTelemetry/Puppet - Node Puppet Runs Analysis/Resources Changed**
```
sumo.datasource=puppet
| parse"\"environment\":\"*\"" as runenvironment
| where runenvironment matches "{{Environment}}"
| parse "\"resources\":{\"name\":\"resources\",\"label\":\"Resources\",\"values\":[[\"total\",\"Total\",*],[\"skipped\",\"Skipped\",*],[\"failed\",\"Failed\",*],[\"failed_to_restart\",\"Failed to restart\",*],[\"restarted\",\"Restarted\",*],[\"changed\",\"Changed\",*],[\"out_of_sync\",\"Out of sync\",*],[\"scheduled\",\"Scheduled\",*],[\"corrective_change\",\"Corrective change\",*]]" as total_res,skipped,failed,failed_to_restart,restarted,changed,out_of_sync,scheduled,corrective_change
| parse "resource_list\":\"*\"}" as resourcelist
```

**Puppet - OpenTelemetry/Puppet - Node Puppet Runs Analysis/Resources Transition**
```
sumo.datasource=puppet
| parse"\"environment\":\"*\"" as runenvironment
| where runenvironment matches "{{Environment}}"
| parse "\"resources\":{\"name\":\"resources\",\"label\":\"Resources\",\"values\":[[\"total\",\"Total\",*],[\"skipped\",\"Skipped\",*],[\"failed\",\"Failed\",*],[\"failed_to_restart\",\"Failed to restart\",*],[\"restarted\",\"Restarted\",*],[\"changed\",\"Changed\",*],[\"out_of_sync\",\"Out of sync\",*],[\"scheduled\",\"Scheduled\",*],[\"corrective_change\",\"Corrective change\",*]]" as total_res,skipped,failed,failed_to_restart,restarted,changed,out_of_sync,scheduled,corrective_change
| parse "resource_list\":\"*\"}" as resourcelist
```

**Puppet - OpenTelemetry/Puppet - Node Puppet Runs Analysis/Skipped Resources**
```
sumo.datasource=puppet
| parse"\"environment\":\"*\"" as runenvironment
| where runenvironment matches "{{Environment}}"
| parse "\"resources\":{\"name\":\"resources\",\"label\":\"Resources\",\"values\":[[\"total\",\"Total\",*],[\"skipped\",\"Skipped\",*],[\"failed\",\"Failed\",*],[\"failed_to_restart\",\"Failed to restart\",*],[\"restarted\",\"Restarted\",*],[\"changed\",\"Changed\",*],[\"out_of_sync\",\"Out of sync\",*],[\"scheduled\",\"Scheduled\",*],[\"corrective_change\",\"Corrective change\",*]]" as total_res,skipped,failed,failed_to_restart,restarted,changed,out_of_sync,scheduled,corrective_change
| parse "resource_list\":\"*\"}" as resourcelist
```

**Puppet - OpenTelemetry/Puppet - Node Puppet Runs Analysis/Slowest Nodes by Catalog Application Time**
```
sumo.datasource=puppet
| parse"\"environment\":\"*\"" as runenvironment
| where runenvironment matches "{{Environment}}"
| parse "\"host\":\"*\"" as node
| parse regex "(?:Applied|Finished)\s(?:catalog|catalog\srun)\sin\s(?<processing_time>.*?)\s.*" 
```

**Puppet - OpenTelemetry/Puppet - Node Puppet Runs Analysis/Top 5 Nodes by Puppet Runs**
```
sumo.datasource=puppet
| parse"\"environment\":\"*\"" as runenvironment
| where runenvironment matches "{{Environment}}"
| parse "\"host\":\"*\"" as node
```

**Puppet - OpenTelemetry/Puppet - Overview/Active Nodes**
```
sumo.datasource=puppet
| parse regex "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
```

**Puppet - OpenTelemetry/Puppet - Overview/Activity by Environments**
```
sumo.datasource=puppet
| parse regex "(?<dummy>environment=)(?<environment>\S+?)&"
```

**Puppet - OpenTelemetry/Puppet - Overview/Average Service Time**
```
sumo.datasource=puppet
AND "Puppet Compiled catalog for" 
| parse "Puppet Compiled catalog for * in environment * in * seconds" as client_name,runenvironment,seconds_taken 
```

**Puppet - OpenTelemetry/Puppet - Overview/Average Service Time by Nodes**
```
sumo.datasource=puppet and "Puppet Compiled catalog for" 
| parse "Puppet Compiled catalog for * in environment * in * seconds" as client_name,runenvironment,seconds_taken 
```

**Puppet - OpenTelemetry/Puppet - Overview/Node Requests Summary Over Time**
```
sumo.datasource=puppet
| parse regex "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP/[\d\.]+\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*"
```

**Puppet - OpenTelemetry/Puppet - Overview/Puppet Node Versions**
```
sumo.datasource=puppet
| parse regex "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP/[\d\.]+\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<puppet_version_prefix>Puppet/)(?<puppet_version>.*?)\s.*"
```


