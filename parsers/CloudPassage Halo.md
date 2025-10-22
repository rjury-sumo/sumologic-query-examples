# Parsers For CloudPassage Halo

**CloudPassage Halo/Critical Events/Critical Issues Outlier**
```
_sourceCategory={{Logsdatasource}}   "current_issues_by_criticality_summary"
| parse regex "\"log\": \{\"(?<metric_type>\w*)\"\: (?<metrics>.*)\}"
| parse regex field=metrics "\"count\": (?<true_count1>[0-9]+), \"critical\": true" multi
```

**CloudPassage Halo/Critical Events/Critical Issues Over Time**
```
_sourceCategory={{Logsdatasource}}  "current_issues_by_criticality_summary"
| parse regex "\"log\": \{\"(?<metric_type>\w*)\"\: (?<metrics>.*)\}"
| parse regex field=metrics "\"count\": (?<true_count1>[0-9]+), \"critical\": true" multi
```

**CloudPassage Halo/Critical Events/Outlier on Delta (today - yesterday) of Critical Issues**
```
_sourceCategory={{Logsdatasource}}  "current_issues_by_criticality_summary"
| parse regex "\"log\": \{\"(?<metric_type>\w*)\"\: (?<metrics>.*)\}"
| parse regex field=metrics "\"count\": (?<true_count1>[0-9]+), \"critical\": true" multi
```

**CloudPassage Halo/Outlier in Critical Issues/Outlier in Critical Issues**
```
_sourceCategory={{Logsdatasource}}  "current_issues_by_criticality_summary"
| parse regex "\"log\": \{\"(?<metric_type>\w*)\"\: (?<metrics>.*)\}"
| parse regex field=metrics "\"count\": (?<true_count1>[0-9]+), \"critical\": true" multi
```

**CloudPassage Halo/Overview/Active Server Counts**
```
_sourceCategory={{Logsdatasource}}   "servers_by_state_summary"
| parse regex "\"log\": \{\"(?<metric_type>\w*)\"\: (?<metrics>.*)\}"
| first(metrics)
| parse regex field= _first "\"count\": (?<true_count1>[0-9]+), \"state\": \"active\"" multi
```

**CloudPassage Halo/Overview/Bottom 10 SW Vulnerabilities**
```
_sourceCategory={{Logsdatasource}}  "sw_vulnerability_summary" "rule_key"
| parse regex "\"log\": \{\"sw_vulnerability_summary\"\: \{\"count\": [0-9]+, \"issues\": (?<metrics>.*)\}"
| first(metrics)
| parse regex field=_first "\"count\": (?<vuln_sw_counter>\d+), \"name\": \"(?<vuln_sw_name>[^,]*)\", \"rule_key\": [^,]*, \"critical\": (?<criticality>\w+)," multi
```

**CloudPassage Halo/Overview/Critical Issues**
```
_sourceCategory={{Logsdatasource}}  "current_issues_by_criticality_summary"
| parse regex "\"log\": \{\"(?<metric_type>\w*)\"\: (?<metrics>.*)\}"
| first(metrics)
| parse regex field=_first "\"count\": (?<true_count1>[0-9]+), \"critical\": true" multi
```

**CloudPassage Halo/Overview/Critical Issues Delta Over 10 Minutes**
```
_sourceCategory={{Logsdatasource}}   "current_issues_by_criticality_summary"
| parse regex "\"log\": \{\"(?<metric_type>\w*)\"\: (?<metrics>.*)\}"
| first(metrics)
| parse regex field=_first "\"count\": (?<true_count1>[0-9]+), \"critical\": true" multi
```

**CloudPassage Halo/Overview/Linux Bottom 10 Processes**
```
_sourceCategory={{Logsdatasource}}   "processes_summary" "process_name"
| parse regex "\"log\": \{\"processes_summary\"\: \{\"count\": [0-9]+, \"servers\": (?<metrics>.*)\}"
| first(metrics)
| parse regex field=_first "\"count\": (?<count_proc>[0-9]+), \"os_type\": \"linux\", \"process_name\": \"(?<proc_name>\w+)\"" multi
```

**CloudPassage Halo/Overview/Linux Top 10 Processes**
```
_sourceCategory={{Logsdatasource}}   "processes_summary" "process_name" "os_type"
| parse regex "\"log\": \{\"processes_summary\"\: \{\"count\": [0-9]+, \"servers\": (?<metrics>.*)\}"
| first(metrics)
| parse regex field=_first "\"count\": (?<count_proc>[0-9]+), \"os_type\": \"linux\", \"process_name\": \"(?<proc_name>\w+)\"" multi
```

**CloudPassage Halo/Overview/Non Critical Issues**
```
_sourceCategory={{Logsdatasource}}   "current_issues_by_criticality_summary"
| parse regex "\"log\": \{\"(?<metric_type>\w*)\"\: (?<metrics>.*)\}"
| first(metrics)
| parse regex field=_first "\"count\": (?<true_count1>[0-9]+), \"critical\": false" multi
```

**CloudPassage Halo/Overview/Number of OS Types**
```
_sourceCategory={{Logsdatasource}}   "os_types_summary"
| parse regex "\"os_types_summary\": \{\"count\": (?<num_of_os_types>\d*),"
```

**CloudPassage Halo/Overview/Number of Processes**
```
_sourceCategory={{Logsdatasource}}  
| parse regex "\"processes_summary\": \{\"count\": (?<num_of_processes>\d*),"
```

**CloudPassage Halo/Overview/Number of Software Packages**
```
_sourceCategory={{Logsdatasource}}   "sw_packages_summary"
| parse regex "\"sw_packages_summary\":\{\"count\":(?<num_of_sw_packages>\d*),"
```

**CloudPassage Halo/Overview/Number of User Accounts**
```
_sourceCategory={{Logsdatasource}}  "local_accounts_summary"
| parse regex "\"local_accounts_summary\": \{\"count\": (?<num_of_local_accounts>\d*),"
```

**CloudPassage Halo/Overview/Top 10 SW Vulnerabilities**
```
_sourceCategory={{Logsdatasource}}  "sw_vulnerability_summary" "rule_key"
| parse regex "\"log\": \{\"sw_vulnerability_summary\"\: \{\"count\": [0-9]+, \"issues\": (?<metrics>.*)\}"
| first(metrics)
| parse regex field=_first "\"count\": (?<vuln_sw_counter>\d+), \"name\": \"(?<vuln_sw_name>[^,]*)\", \"rule_key\": [^,]*, \"critical\": (?<criticality>\w+)," multi
```

**CloudPassage Halo/Overview/Windows Bottom 10 Services**
```
_sourceCategory={{Logsdatasource}}   "processes_summary" "process_name" "os_type"
| parse regex "\"log\": \{\"processes_summary\"\: \{\"count\": [0-9]+, \"servers\": (?<metrics>.*)\}"
| first(metrics)
| parse regex field=_first "\{\"count\": (?<count_svc>[0-9]+), \"os_type\": \"windows\", \"process_name\": \"(?<svc_name>\w+\.\w+)\"\}" multi
```

**CloudPassage Halo/Overview/Windows Top 10 Services**
```
_sourceCategory={{Logsdatasource}}  "processes_summary" "process_name" "os_type"
| parse regex "\"log\": \{\"processes_summary\"\: \{\"count\": [0-9]+, \"servers\": (?<metrics>.*)\}"
| first(metrics)
| parse regex field=_first "\{\"count\": (?<count_svc>[0-9]+), \"os_type\": \"windows\", \"process_name\": \"(?<svc_name>\w+\.\w+)\"\}" multi
```


