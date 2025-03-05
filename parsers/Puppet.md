# Parsers For Puppet

## Parser:
```
| parse "\"environment\":\"*\"" as environment
| parse "\"title\":\"*\"*\"resource_type\":\"*\"*\"failed\":*," as resource_name,text1,resource_type,text2,failure_status
 
```
### Use Cases:
Most Recent Errors, Most Recent Warnings, Node Puppet Run Activity, Resource Status, Skipped Resources, Top 10 Errors, Top Erroneous Nodes



## Parser:
```
| parse "\"host\":\"*\"" as node
 
```
### Use Cases:
Most Recent Errors, Most Recent Warnings, Node Puppet Run Activity, Out of Sync Resources, Resource Status, Skipped Resources, Top 10 Errors, Top 5 Nodes by Puppet Runs, Top Erroneous Nodes



## Parser:
```
| parse "\"host\":\"*\"" as node
| parse regex "(?:Applied|Finished)\s(?:catalog|catalog\srun)\sin\s(?<processing_time>.*?)\s.*" 
 
```
### Use Cases:
Failed Resources, Most Recent Errors, Most Recent Warnings, Node Puppet Run Activity, Out of Sync Resources, Resource Status, Resources Changed, Resources Transition, Skipped Resources, Slowest Nodes by Catalog Application Time, Top 10 Errors, Top 5 Nodes by Puppet Runs, Top Erroneous Nodes



## Parser:
```
| parse "\"puppet_version\":\"*\",\"status\":\"*\"" as puppet_version,status
 
```
### Use Cases:
Most Recent Errors, Most Recent Warnings, Node Puppet Run Activity, Skipped Resources, Top 10 Errors, Top Erroneous Nodes



## Parser:
```
| parse "\"resources\":{\"name\":\"resources\",\"label\":\"Resources\",\"values\":[[\"total\",\"Total\",*],[\"skipped\",\"Skipped\",*],[\"failed\",\"Failed\",*],[\"failed_to_restart\",\"Failed to restart\",*],[\"restarted\",\"Restarted\",*],[\"changed\",\"Changed\",*],[\"out_of_sync\",\"Out of sync\",*],[\"scheduled\",\"Scheduled\",*],[\"corrective_change\",\"Corrective change\",*]]" as total_res,skipped,failed,failed_to_restart,restarted,changed,out_of_sync,scheduled,corrective_change
| parse "resource_list\":\"*\"}" as resourcelist
 
```
### Use Cases:
Failed Resources, Most Recent Errors, Most Recent Warnings, Node Puppet Run Activity, Out of Sync Resources, Resource Status, Resources Changed, Resources Transition, Skipped Resources, Top 10 Errors, Top 5 Nodes by Puppet Runs, Top Erroneous Nodes



## Parser:
```
| parse "Puppet Compiled catalog for * in environment * in * seconds" as client_name,runenvironment,seconds_taken 
 
```
### Use Cases:
Active Nodes, Activity by Environments, Average Catalog Application Time, Average Service Time, Average Service Time by Nodes, Failed Resources, Highest Service Time by Nodes, Most Recent Errors, Most Recent Warnings, Node Puppet Run Activity, Node Requests Summary Over Time, Out of Sync Resources, Puppet Node Versions, Resource Status, Resources Changed, Resources Transition, Skipped Resources, Slowest Nodes by Catalog Application Time, Top 10 Errors, Top 5 Nodes by Puppet Runs, Top Erroneous Nodes



## Parser:
```
| parse "Puppet Compiled catalog for * in environment * in * seconds" as node_name,runenvironment,seconds_taken
 
```
### Use Cases:
Active Nodes, Activity by Environments, Average Catalog Application Time, Failed Resources, Highest Service Time by Nodes, Most Recent Errors, Most Recent Warnings, Node Puppet Run Activity, Out of Sync Resources, Puppet Node Versions, Resource Status, Resources Changed, Resources Transition, Skipped Resources, Slowest Nodes by Catalog Application Time, Top 10 Errors, Top 5 Nodes by Puppet Runs, Top Erroneous Nodes



## Parser:
```
| parse regex "(?:Applied|Finished)\s(?:catalog|catalog\srun)\sin\s(?<processing_time>.*?)\s.*" 
 
```
### Use Cases:
Average Catalog Application Time, Failed Resources, Most Recent Errors, Most Recent Warnings, Node Puppet Run Activity, Out of Sync Resources, Resource Status, Resources Changed, Resources Transition, Skipped Resources, Slowest Nodes by Catalog Application Time, Top 10 Errors, Top 5 Nodes by Puppet Runs, Top Erroneous Nodes



## Parser:
```
| parse regex "(?<dummy>environment=)(?<environment>\S+?)&"
 
```
### Use Cases:
Activity by Environments, Average Catalog Application Time, Failed Resources, Most Recent Errors, Most Recent Warnings, Node Puppet Run Activity, Out of Sync Resources, Resource Status, Resources Changed, Resources Transition, Skipped Resources, Slowest Nodes by Catalog Application Time, Top 10 Errors, Top 5 Nodes by Puppet Runs, Top Erroneous Nodes



## Parser:
```
| parse regex "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP/[\d\.]+\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<puppet_version_prefix>Puppet/)(?<puppet_version>.*?)\s.*"
 
```
### Use Cases:
Activity by Environments, Average Catalog Application Time, Failed Resources, Most Recent Errors, Most Recent Warnings, Node Puppet Run Activity, Out of Sync Resources, Puppet Node Versions, Resource Status, Resources Changed, Resources Transition, Skipped Resources, Slowest Nodes by Catalog Application Time, Top 10 Errors, Top 5 Nodes by Puppet Runs, Top Erroneous Nodes



## Parser:
```
| parse regex "\sERROR\s.*\]\s\[.*?\]\s(?<err_msg>.*)$"
 
```
### Use Cases:
Most Recent Errors, Most Recent Warnings, Top 10 Errors, Top Erroneous Nodes



## Parser:
```
| parse regex "\son node\s(?<node_name>.*)$"
 
```
### Use Cases:
Top Erroneous Nodes



## Parser:
```
| parse regex "\sWARN\s.*\]\s\[.*?\]\s(?<warning>.*)$"
 
```
### Use Cases:
Most Recent Warnings, Top Erroneous Nodes



## Parser:
```
| parse regex "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
 
```
### Use Cases:
Active Nodes, Activity by Environments, Average Catalog Application Time, Failed Resources, Most Recent Errors, Most Recent Warnings, Node Puppet Run Activity, Out of Sync Resources, Puppet Node Versions, Resource Status, Resources Changed, Resources Transition, Skipped Resources, Slowest Nodes by Catalog Application Time, Top 10 Errors, Top 5 Nodes by Puppet Runs, Top Erroneous Nodes



## Parser:
```
| parse regex "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP/[\d\.]+\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*"
 
```
### Use Cases:
Active Nodes, Activity by Environments, Average Catalog Application Time, Failed Resources, Highest Service Time by Nodes, Most Recent Errors, Most Recent Warnings, Node Puppet Run Activity, Node Requests Summary Over Time, Out of Sync Resources, Puppet Node Versions, Resource Status, Resources Changed, Resources Transition, Skipped Resources, Slowest Nodes by Catalog Application Time, Top 10 Errors, Top 5 Nodes by Puppet Runs, Top Erroneous Nodes


